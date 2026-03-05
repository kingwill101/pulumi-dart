// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Data Fusion version. This proto message stores information about certain Data Fusion version, which is used for Data Fusion version upgrade.
class VersionResponse {
  /// Represents a list of available feature names for a given version.
  final pulumi.Input<List<String>> availableFeatures;
  /// Whether this is currently the default version for Cloud Data Fusion
  final pulumi.Input<bool> defaultVersion;
  /// Type represents the release availability of the version
  final pulumi.Input<String> type;
  /// The version number of the Data Fusion instance, such as '6.0.1.0'.
  final pulumi.Input<String> versionNumber;

  /// Creates a new [VersionResponse].
  /// [availableFeatures] Represents a list of available feature names for a given version.
  /// [defaultVersion] Whether this is currently the default version for Cloud Data Fusion
  /// [type] Type represents the release availability of the version
  /// [versionNumber] The version number of the Data Fusion instance, such as '6.0.1.0'.
  VersionResponse({
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

  factory VersionResponse.fromMap(Map<String, dynamic> map) {
    return VersionResponse(
      availableFeatures: pulumi.Input.fromValue((map['availableFeatures'] as List).cast<String>()),
      defaultVersion: pulumi.Input.fromValue(map['defaultVersion'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
      versionNumber: pulumi.Input.fromValue(map['versionNumber'] as String),
    );
  }
}

