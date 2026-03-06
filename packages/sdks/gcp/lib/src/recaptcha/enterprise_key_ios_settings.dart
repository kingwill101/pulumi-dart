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
  const EnterpriseKeyIosSettings({
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
      allowAllBundleIds: (() { final guardedValue = map['allowAllBundleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedBundleIds: (() { final guardedValue = map['allowedBundleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

