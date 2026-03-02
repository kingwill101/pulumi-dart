// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseKeyAndroidSettings {
  /// If set to true, it means allowed_package_names will not be enforced.
  final pulumi.Input<bool>? allowAllPackageNames;
  /// Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  final pulumi.Input<List<String>>? allowedPackageNames;

  /// Creates a new [EnterpriseKeyAndroidSettings].
  /// [allowAllPackageNames] If set to true, it means allowed_package_names will not be enforced.
  /// [allowedPackageNames] Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  EnterpriseKeyAndroidSettings({
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
      allowAllPackageNames: map['allowAllPackageNames'] == null ? null : (map['allowAllPackageNames']! as bool).input(),
      allowedPackageNames: map['allowedPackageNames'] == null ? null : ((map['allowedPackageNames']! as List).cast<String>()).input(),
    );
  }
}

