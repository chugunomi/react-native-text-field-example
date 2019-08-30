import React, { SyntheticEvent } from 'react';
import { ViewProps } from 'react-native';


export interface OnTextUpdateEvent extends SyntheticEvent {
    nativeEvent: {
      value: string,
    }
  }

export interface EditTextExampleProps extends ViewProps {
    text?: string;
    onTextUpdate?(event: OnTextUpdateEvent);
}

declare class EditTextExample extends React.Component<EditTextExampleProps> {}