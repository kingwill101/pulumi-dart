// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Data Fusion version.
class VersionResponseDatafusionV1beta1 {
  /// Represents a list of available feature names for a given version.
  final pulumi.Input<List<String>> availableFeatures;
  /// Whether this is currently the default version for Cloud Data Fusion
  final pulumi.Input<bool> defaultVersion;
  /// Type represents the release availability of the version
  final pulumi.Input<String> type;
  /// The version number of the Data Fusion instance, such as '6.0.1.0'.
  final pulumi.Input<String> versionNumber;

  /// Creates a new [VersionResponseDatafusionV1beta1].
  /// [availableFeatures] Represents a list of available feature names for a given version.
  /// [defaultVersion] Whether this is currently the default version for Cloud Data Fusion
  /// [type] Type represents the release availability of the version
  /// [versionNumber] The version number of the Data Fusion instance, such as '6.0.1.0'.
  VersionResponseDatafusionV1beta1({
    required this.availableFeatures,
    required this.defaultVersion,
    required this.type,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableFeatures': availableFeatures,
      'defaultVersion': defaultVersion,
      'type': type,
      'versionNumber': versionNumber,
    };
  }

  factory VersionResponseDatafusionV1beta1.fromMap(Map<String, dynamic> map) {
    return VersionResponseDatafusionV1beta1(
      availableFeatures: ((map['availableFeatures'] as List).cast<String>()).input(),
      defaultVersion: (map['defaultVersion'] as bool).input(),
      type: (map['type'] as String).input(),
      versionNumber: (map['versionNumber'] as String).input(),
    );
  }
}

