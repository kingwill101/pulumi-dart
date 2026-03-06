// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_success_policy_final_state.dart';

/// Policy that dictates the behavior for the task after it completes successfully.
class GoogleCloudIntegrationsV1alphaSuccessPolicy {
  /// State to which the execution snapshot status will be set if the task succeeds.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState>? finalState;

  /// Creates a new [GoogleCloudIntegrationsV1alphaSuccessPolicy].
  /// [finalState] State to which the execution snapshot status will be set if the task succeeds.
  const GoogleCloudIntegrationsV1alphaSuccessPolicy({
    this.finalState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finalState': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState, String>(finalState, (value) => value.wireValue),
    };
  }

  factory GoogleCloudIntegrationsV1alphaSuccessPolicy.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaSuccessPolicy(
      finalState: (() { final guardedValue = map['finalState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaSuccessPolicyFinalState.fromValue(guardedValue as String)); })(),
    );
  }
}

