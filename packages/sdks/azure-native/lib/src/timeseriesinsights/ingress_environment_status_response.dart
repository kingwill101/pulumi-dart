// ignore_for_file: unused_element, unnecessary_cast

import 'environment_state_details_response.dart';

/// An object that represents the status of ingress on an environment.
class IngressEnvironmentStatusResponse {
  /// This string represents the state of ingress operations on an environment. It can be "Disabled", "Ready", "Running", "Paused" or "Unknown"
  final String? state;
  /// An object that contains the details about an environment's state.
  final EnvironmentStateDetailsResponse stateDetails;

  /// Creates a new [IngressEnvironmentStatusResponse].
  /// [state] This string represents the state of ingress operations on an environment. It can be "Disabled", "Ready", "Running", "Paused" or "Unknown"
  /// [stateDetails] An object that contains the details about an environment's state.
  IngressEnvironmentStatusResponse({
    this.state,
    required this.stateDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
      'stateDetails': stateDetails.toMap(),
    };
  }

  factory IngressEnvironmentStatusResponse.fromMap(Map<String, dynamic> map) {
    return IngressEnvironmentStatusResponse(
      state: map['state'] == null ? null : map['state'] as String,
      stateDetails: EnvironmentStateDetailsResponse.fromMap((map['stateDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

