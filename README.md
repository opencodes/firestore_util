<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

A Firestore Util Class to parse firestore fields to flat json.

## Features

- Parse firestore json fields to commonly used json standard for any model class

## Getting started
### Installation 

Add this line to pubspec.yaml

```
dependencies:
    nb_utils: <latest_version>
```

### Import package

```
import 'package:nb_utils/nb_utils.dart';
```

## Usage

### Call static method parse

```dart
FirestoreUtil.parse(x)
```

### Full example 

```dart

final Response response = [Your API Response from Http client];
return List<ModelClass>.from(
    (response.data['documents'] as Iterable<dynamic>).map(
    (x) {
        return ModelClass.fromJson(FirestoreUtil.parse(x));
    },
    ),
).toList();

```

## Additional information
If you want to give suggestion, please contact me via email - rkjha.it.in@gmail.com

#### Thank you :)

