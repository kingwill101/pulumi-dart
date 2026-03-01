// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response.dart';

/// An indication of cache health. Gives more information about health than just that related to provisioning.
class CacheHealthResponse {
  /// Outstanding conditions that need to be investigated and resolved.
  final List<ConditionResponse> conditions;
  /// List of cache health states. Down is when the cluster is not responding.  Degraded is when its functioning but has some alerts. Transitioning when it is creating or deleting. Unknown will be returned in old api versions when a new value is added in future versions. WaitingForKey is when the create is waiting for the system assigned identity to be given access to the encryption key in the encryption settings.
  final String? state;
  /// Describes explanation of state.
  final String? statusDescription;

  /// Creates a new [CacheHealthResponse].
  /// [conditions] Outstanding conditions that need to be investigated and resolved.
  /// [state] List of cache health states. Down is when the cluster is not responding.  Degraded is when its functioning but has some alerts. Transitioning when it is creating or deleting. Unknown will be returned in old api versions when a new value is added in future versions. WaitingForKey is when the create is waiting for the system assigned identity to be given access to the encryption key in the encryption settings.
  /// [statusDescription] Describes explanation of state.
  CacheHealthResponse({
    required this.conditions,
    this.state,
    this.statusDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.encodeList<ConditionResponse, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'state': ?state,
      'statusDescription': ?statusDescription,
    };
  }

  factory CacheHealthResponse.fromMap(Map<String, dynamic> map) {
    return CacheHealthResponse(
      conditions: pulumi.Input.decodeList<ConditionResponse>(map['conditions'], (value) => ConditionResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
      statusDescription: map['statusDescription'] == null ? null : map['statusDescription'] as String,
    );
  }
}

