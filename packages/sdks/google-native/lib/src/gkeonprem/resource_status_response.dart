// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_condition_response.dart';

/// ResourceStatus describes why a cluster or node pool has a certain status. (e.g., ERROR or DEGRADED).
class ResourceStatusResponse {
  /// ResourceCondition provide a standard mechanism for higher-level status reporting from controller.
  final pulumi.Input<List<ResourceConditionResponse>> conditions;
  /// Human-friendly representation of the error message from controller. The error message can be temporary as the controller controller creates a cluster or node pool. If the error message persists for a longer period of time, it can be used to surface error message to indicate real problems requiring user intervention.
  final pulumi.Input<String> errorMessage;

  /// Creates a new [ResourceStatusResponse].
  /// [conditions] ResourceCondition provide a standard mechanism for higher-level status reporting from controller.
  /// [errorMessage] Human-friendly representation of the error message from controller. The error message can be temporary as the controller controller creates a cluster or node pool. If the error message persists for a longer period of time, it can be used to surface error message to indicate real problems requiring user intervention.
  const ResourceStatusResponse({
    required this.conditions,
    required this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<ResourceConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ResourceConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorMessage': errorMessage,
    };
  }

  factory ResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponse(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceConditionResponse>(map['conditions']!, (value) => ResourceConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
    );
  }
}
