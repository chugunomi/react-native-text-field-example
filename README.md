# react-native-edit-text-example

## Getting started

`$ npm install react-native-edit-text-example --save`

### Mostly automatic installation

`$ react-native link react-native-edit-text-example`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-edit-text-example` and add `EditTextExample.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libEditTextExample.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.simbirsoft.edittext.EditTextExamplePackage;` to the imports at the top of the file
  - Add `new EditTextExamplePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-edit-text-example'
  	project(':react-native-edit-text-example').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-edit-text-example/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-edit-text-example')
  	```


## Usage
```javascript
import EditTextExample from 'react-native-edit-text-example';

// TODO: What to do with the module?
EditTextExample;
```
