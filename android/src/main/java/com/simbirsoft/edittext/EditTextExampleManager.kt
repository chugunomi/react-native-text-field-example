package com.simbirsoft.edittext

import android.widget.EditText
import androidx.core.widget.doOnTextChanged

import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp
import com.facebook.react.common.MapBuilder
import com.facebook.react.uimanager.events.RCTEventEmitter
import com.facebook.react.bridge.Arguments


class EditTextExampleManager : SimpleViewManager<EditText>() {
    lateinit var editText: EditText

    companion object {
        val REACT_CLASS = "EditTextExample"
    }

    override fun getName(): String {
        return REACT_CLASS
    }

    public override fun createViewInstance(c: ThemedReactContext): EditText {
        editText = EditText(c)
        editText.doOnTextChanged { text, start, count, after -> this.onChange(c, text) }
        return editText
    }

    private fun onChange(ctx: ThemedReactContext, text: CharSequence?) {
        val event = Arguments.createMap()
        event.putString("value", text.toString())

        val emitter = ctx.getJSModule(RCTEventEmitter::class.java)
        emitter.receiveEvent(editText.id, "onTextUpdateEvent", event)
    }

    @ReactProp(name = "text")
    fun setText(editText: EditText, text: String?) {
        editText.setText(text)
    }

    override fun getExportedCustomDirectEventTypeConstants(): MutableMap<String, Any> {
        var export: MutableMap<String, Any>? = super.getExportedCustomDirectEventTypeConstants()
        if (export == null) {
            export = MapBuilder.newHashMap()
        }
        export!!["onTextUpdateEvent"] = MapBuilder.of("registrationName", "onTextUpdate")
        return export
    }
}