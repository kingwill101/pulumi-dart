// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy that dictates the behavior for the task after it completes successfully.
class GoogleCloudIntegrationsV1alphaSuccessPolicyResponse {
  /// State to which the execution snapshot status will be set if the task succeeds.
  final pulumi.Input<String> finalState;

  /// Creates a new [GoogleCloudIntegrationsV1alphaSuccessPolicyResponse].
  /// [finalState] State to which the execution snapshot status will be set if the task succeeds.
  const GoogleCloudIntegrationsV1alphaSuccessPolicyResponse({
    required this.finalState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finalState': finalState,
    };
  }

  factory GoogleCloudIntegrationsV1alphaSuccessPolicyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaSuccessPolicyResponse(
      finalState: pulumi.Input.fromValue(map['finalState'] as String),
    );
  }
}
