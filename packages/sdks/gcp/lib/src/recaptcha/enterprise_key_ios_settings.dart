// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseKeyIosSettings {
  /// If set to true, it means allowed_bundle_ids will not be enforced.
  final pulumi.Input<bool>? allowAllBundleIds;
  /// iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.productname.appname'
  final pulumi.Input<List<String>>? allowedBundleIds;

  /// Creates a new [EnterpriseKeyIosSettings].
  /// [allowAllBundleIds] If set to true, it means allowed_bundle_ids will not be enforced.
  /// [allowedBundleIds] iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.productname.appname'
  EnterpriseKeyIosSettings({
    this.allowAllBundleIds,
    this.allowedBundleIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllBundleIds': ?allowAllBundleIds,
      'allowedBundleIds': ?allowedBundleIds,
    };
  }

  factory EnterpriseKeyIosSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyIosSettings(
      allowAllBundleIds: map['allowAllBundleIds'] == null ? null : (map['allowAllBundleIds']! as bool).input(),
      allowedBundleIds: map['allowedBundleIds'] == null ? null : ((map['allowedBundleIds']! as List).cast<String>()).input(),
    );
  }
}

