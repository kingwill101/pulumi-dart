// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_limits_response.dart';
import 'resource_requests_response.dart';

/// This type describes the resource requirements for a container or a service.
class ResourceRequirementsResponse {
  /// Describes the maximum limits on the resources for a given container.
  final pulumi.Input<ResourceLimitsResponse>? limits;
  /// Describes the requested resources for a given container.
  final pulumi.Input<ResourceRequestsResponse> requests;

  /// Creates a new [ResourceRequirementsResponse].
  /// [limits] Describes the maximum limits on the resources for a given container.
  /// [requests] Describes the requested resources for a given container.
  ResourceRequirementsResponse({
    this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?pulumi.Input.mapOptionalInputValue<ResourceLimitsResponse, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'requests': pulumi.Input.mapInputValue<ResourceRequestsResponse, Map<String, dynamic>>(requests, (value) => value.toMap()),
    };
  }

  factory ResourceRequirementsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRequirementsResponse(
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceLimitsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requests: pulumi.Input.fromValue(ResourceRequestsResponse.fromMap((map['requests']! as Map).cast<String, dynamic>())),
    );
  }
}

