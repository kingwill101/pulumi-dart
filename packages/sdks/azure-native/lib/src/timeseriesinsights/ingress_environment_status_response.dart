// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_state_details_response.dart';

/// An object that represents the status of ingress on an environment.
class IngressEnvironmentStatusResponse {
  /// This string represents the state of ingress operations on an environment. It can be "Disabled", "Ready", "Running", "Paused" or "Unknown"
  final pulumi.Input<String>? state;
  /// An object that contains the details about an environment's state.
  final pulumi.Input<EnvironmentStateDetailsResponse> stateDetails;

  /// Creates a new [IngressEnvironmentStatusResponse].
  /// [state] This string represents the state of ingress operations on an environment. It can be "Disabled", "Ready", "Running", "Paused" or "Unknown"
  /// [stateDetails] An object that contains the details about an environment's state.
  const IngressEnvironmentStatusResponse({
    this.state,
    required this.stateDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'stateDetails': pulumi.Input.mapInputValue<EnvironmentStateDetailsResponse, Map<String, dynamic>>(stateDetails, (value) => value.toMap()),
    };
  }

  factory IngressEnvironmentStatusResponse.fromMap(Map<String, dynamic> map) {
    return IngressEnvironmentStatusResponse(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateDetails: pulumi.Input.fromValue(EnvironmentStateDetailsResponse.fromMap((map['stateDetails']! as Map).cast<String, dynamic>())),
    );
  }
}
