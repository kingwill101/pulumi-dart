// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings specific to keys that can be used by Android apps.
class GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse {
  /// Optional. If set to true, allowed_package_names are not enforced.
  final pulumi.Input<bool> allowAllPackageNames;
  /// Optional. Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  final pulumi.Input<List<String>> allowedPackageNames;
  /// Optional. Set to true for keys that are used in an Android application that is available for download in app stores in addition to the Google Play Store.
  final pulumi.Input<bool> supportNonGoogleAppStoreDistribution;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse].
  /// [allowAllPackageNames] Optional. If set to true, allowed_package_names are not enforced.
  /// [allowedPackageNames] Optional. Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  /// [supportNonGoogleAppStoreDistribution] Optional. Set to true for keys that are used in an Android application that is available for download in app stores in addition to the Google Play Store.
  const GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse({
    required this.allowAllPackageNames,
    required this.allowedPackageNames,
    required this.supportNonGoogleAppStoreDistribution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllPackageNames': allowAllPackageNames,
      'allowedPackageNames': allowedPackageNames,
      'supportNonGoogleAppStoreDistribution': supportNonGoogleAppStoreDistribution,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1AndroidKeySettingsResponse(
      allowAllPackageNames: pulumi.Input.fromValue(map['allowAllPackageNames'] as bool),
      allowedPackageNames: pulumi.Input.fromValue((map['allowedPackageNames'] as List).cast<String>()),
      supportNonGoogleAppStoreDistribution: pulumi.Input.fromValue(map['supportNonGoogleAppStoreDistribution'] as bool),
    );
  }
}
