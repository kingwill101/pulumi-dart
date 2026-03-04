// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigResponse {
  /// Defines the type of technology used by the confidential instance.
  final pulumi.Input<String> confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled.
  final pulumi.Input<bool> enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigResponse].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential instance.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfigResponse({
    required this.confidentialInstanceType,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': confidentialInstanceType,
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory ConfidentialInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfigResponse(
      confidentialInstanceType: pulumi.Input.fromValue(
        map['confidentialInstanceType'] as String,
      ),
      enableConfidentialCompute: pulumi.Input.fromValue(
        map['enableConfidentialCompute'] as bool,
      ),
    );
  }
}
