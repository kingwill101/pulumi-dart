// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureStatusResponse {
  /// The status representing the state of this feature.
  final pulumi.Input<String> detailedStatus;

  /// The descriptive message about the current detailed status.
  final pulumi.Input<String> detailedStatusMessage;

  /// The name of the feature.
  final pulumi.Input<String> name;

  /// The version of the feature.
  final pulumi.Input<String> version;

  /// Creates a new [FeatureStatusResponse].
  /// [detailedStatus] The status representing the state of this feature.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [name] The name of the feature.
  /// [version] The version of the feature.
  FeatureStatusResponse({
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'name': name,
      'version': version,
    };
  }

  factory FeatureStatusResponse.fromMap(Map<String, dynamic> map) {
    return FeatureStatusResponse(
      detailedStatus: pulumi.Input.fromValue(map['detailedStatus'] as String),
      detailedStatusMessage: pulumi.Input.fromValue(
        map['detailedStatusMessage'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
