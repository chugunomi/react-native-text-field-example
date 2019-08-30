import React from 'react';
import { requireNativeComponent } from 'react-native';
const EditTextExample = requireNativeComponent('EditTextExample', null);

export const editTextProps = {
    style: {
        width: '100%',
        height: 60,
    },
};

export default function (props) {
    return <EditTextExample {...editTextProps} {...props} style={[editTextProps.style, props.style]}/>;
};
