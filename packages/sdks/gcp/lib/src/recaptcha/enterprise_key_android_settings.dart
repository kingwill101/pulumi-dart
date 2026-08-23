// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseKeyAndroidSettings {
  /// If set to true, it means allowedPackageNames will not be enforced.
  final pulumi.Input<bool>? allowAllPackageNames;
  /// Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  final pulumi.Input<List<String>>? allowedPackageNames;

  /// Creates a new [EnterpriseKeyAndroidSettings].
  /// [allowAllPackageNames] If set to true, it means allowedPackageNames will not be enforced.
  /// [allowedPackageNames] Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  const EnterpriseKeyAndroidSettings({
    this.allowAllPackageNames,
    this.allowedPackageNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllPackageNames': ?allowAllPackageNames,
      'allowedPackageNames': ?allowedPackageNames,
    };
  }

  factory EnterpriseKeyAndroidSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyAndroidSettings(
      allowAllPackageNames: (() { final guardedValue = map['allowAllPackageNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedPackageNames: (() { final guardedValue = map['allowedPackageNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
