// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceRequirements describes the compute resource requirements.
class ResourceRequirementsResponse {
  /// Limits describes the maximum amount of compute resources allowed. Only 'cpu' and 'memory' keys are supported. * For supported 'cpu' values, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  final pulumi.Input<Map<String, String>> limits;
  /// Requests describes the minimum amount of compute resources required. Only `cpu` and `memory` are supported. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. * For supported 'cpu' values, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  final pulumi.Input<Map<String, String>> requests;

  /// Creates a new [ResourceRequirementsResponse].
  /// [limits] Limits describes the maximum amount of compute resources allowed. Only 'cpu' and 'memory' keys are supported. * For supported 'cpu' values, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  /// [requests] Requests describes the minimum amount of compute resources required. Only `cpu` and `memory` are supported. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. * For supported 'cpu' values, go to https://cloud.google.com/run/docs/configuring/cpu. * For supported 'memory' values and syntax, go to https://cloud.google.com/run/docs/configuring/memory-limits
  const ResourceRequirementsResponse({
    required this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': limits,
      'requests': requests,
    };
  }

  factory ResourceRequirementsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRequirementsResponse(
      limits: pulumi.Input.fromValue((map['limits'] as Map).cast<String, String>()),
      requests: pulumi.Input.fromValue((map['requests'] as Map).cast<String, String>()),
    );
  }
}

