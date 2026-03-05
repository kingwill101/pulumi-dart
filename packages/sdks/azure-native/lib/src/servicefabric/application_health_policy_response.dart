// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_type_health_policy_response.dart';

/// Defines a health policy used to evaluate the health of an application or one of its children entities.
class ApplicationHealthPolicyResponse {
  /// Indicates whether warnings are treated with the same severity as errors.
  final pulumi.Input<bool> considerWarningAsError;
  /// The health policy used by default to evaluate the health of a service type.
  final pulumi.Input<ServiceTypeHealthPolicyResponse>? defaultServiceTypeHealthPolicy;
  /// The maximum allowed percentage of unhealthy deployed applications. Allowed values are Byte values from zero to 100.
  /// The percentage represents the maximum tolerated percentage of deployed applications that can be unhealthy before the application is considered in error.
  /// This is calculated by dividing the number of unhealthy deployed applications over the number of nodes where the application is currently deployed on in the cluster.
  /// The computation rounds up to tolerate one failure on small numbers of nodes. Default percentage is zero.
  final pulumi.Input<int> maxPercentUnhealthyDeployedApplications;
  /// The map with service type health policy per service type name. The map is empty by default.
  final pulumi.Input<Map<String, ServiceTypeHealthPolicyResponse>>? serviceTypeHealthPolicyMap;

  /// Creates a new [ApplicationHealthPolicyResponse].
  /// [considerWarningAsError] Indicates whether warnings are treated with the same severity as errors.
  /// [defaultServiceTypeHealthPolicy] The health policy used by default to evaluate the health of a service type.
  /// [maxPercentUnhealthyDeployedApplications] The maximum allowed percentage of unhealthy deployed applications. Allowed values are Byte values from zero to 100.
  /// [serviceTypeHealthPolicyMap] The map with service type health policy per service type name. The map is empty by default.
  ApplicationHealthPolicyResponse({
    required this.considerWarningAsError,
    this.defaultServiceTypeHealthPolicy,
    required this.maxPercentUnhealthyDeployedApplications,
    this.serviceTypeHealthPolicyMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'considerWarningAsError': considerWarningAsError,
      'defaultServiceTypeHealthPolicy': ?pulumi.Input.mapOptionalInputValue<ServiceTypeHealthPolicyResponse, Map<String, dynamic>>(defaultServiceTypeHealthPolicy, (value) => value.toMap()),
      'maxPercentUnhealthyDeployedApplications': maxPercentUnhealthyDeployedApplications,
      'serviceTypeHealthPolicyMap': ?pulumi.Input.mapOptionalInputValue<Map<String, ServiceTypeHealthPolicyResponse>, Map<String, Map<String, dynamic>>>(serviceTypeHealthPolicyMap, (value) => pulumi.Input.encodeMapValues<ServiceTypeHealthPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationHealthPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationHealthPolicyResponse(
      considerWarningAsError: pulumi.Input.fromValue(map['considerWarningAsError'] as bool),
      defaultServiceTypeHealthPolicy: (() { final guardedValue = map['defaultServiceTypeHealthPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTypeHealthPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxPercentUnhealthyDeployedApplications: pulumi.Input.fromValue(map['maxPercentUnhealthyDeployedApplications'] as int),
      serviceTypeHealthPolicyMap: (() { final guardedValue = map['serviceTypeHealthPolicyMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ServiceTypeHealthPolicyResponse>(guardedValue, (value) => ServiceTypeHealthPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

