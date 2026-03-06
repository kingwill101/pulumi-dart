// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Supported OS upgrade versions.
class OSUpgradeSupportedVersionsResponse {
  /// The source OS version name.
  final pulumi.Input<String> supportedSourceOsVersion;
  /// The target OS version names.
  final pulumi.Input<List<String>> supportedTargetOsVersions;

  /// Creates a new [OSUpgradeSupportedVersionsResponse].
  /// [supportedSourceOsVersion] The source OS version name.
  /// [supportedTargetOsVersions] The target OS version names.
  const OSUpgradeSupportedVersionsResponse({
    required this.supportedSourceOsVersion,
    required this.supportedTargetOsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedSourceOsVersion': supportedSourceOsVersion,
      'supportedTargetOsVersions': supportedTargetOsVersions,
    };
  }

  factory OSUpgradeSupportedVersionsResponse.fromMap(Map<String, dynamic> map) {
    return OSUpgradeSupportedVersionsResponse(
      supportedSourceOsVersion: pulumi.Input.fromValue(map['supportedSourceOsVersion'] as String),
      supportedTargetOsVersions: pulumi.Input.fromValue((map['supportedTargetOsVersions'] as List).cast<String>()),
    );
  }
}

