// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Android app information.
class AndroidAppInfoResponse {
  /// The name of the app. Optional
  final pulumi.Input<String> name;
  /// The package name of the app. Required.
  final pulumi.Input<String> packageName;
  /// The internal version code of the app. Optional.
  final pulumi.Input<String> versionCode;
  /// The version name of the app. Optional.
  final pulumi.Input<String> versionName;

  /// Creates a new [AndroidAppInfoResponse].
  /// [name] The name of the app. Optional
  /// [packageName] The package name of the app. Required.
  /// [versionCode] The internal version code of the app. Optional.
  /// [versionName] The version name of the app. Optional.
  const AndroidAppInfoResponse({
    required this.name,
    required this.packageName,
    required this.versionCode,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'packageName': packageName,
      'versionCode': versionCode,
      'versionName': versionName,
    };
  }

  factory AndroidAppInfoResponse.fromMap(Map<String, dynamic> map) {
    return AndroidAppInfoResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      versionCode: pulumi.Input.fromValue(map['versionCode'] as String),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
    );
  }
}
