// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Android app information.
class AndroidAppInfo {
  /// The name of the app. Optional
  final pulumi.Input<String>? name;
  /// The package name of the app. Required.
  final pulumi.Input<String>? packageName;
  /// The internal version code of the app. Optional.
  final pulumi.Input<String>? versionCode;
  /// The version name of the app. Optional.
  final pulumi.Input<String>? versionName;

  /// Creates a new [AndroidAppInfo].
  /// [name] The name of the app. Optional
  /// [packageName] The package name of the app. Required.
  /// [versionCode] The internal version code of the app. Optional.
  /// [versionName] The version name of the app. Optional.
  const AndroidAppInfo({
    this.name,
    this.packageName,
    this.versionCode,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'packageName': ?packageName,
      'versionCode': ?versionCode,
      'versionName': ?versionName,
    };
  }

  factory AndroidAppInfo.fromMap(Map<String, dynamic> map) {
    return AndroidAppInfo(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionCode: (() { final guardedValue = map['versionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
