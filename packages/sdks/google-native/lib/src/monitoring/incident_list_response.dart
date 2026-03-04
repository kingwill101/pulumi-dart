// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_resource_response.dart';

/// A widget that displays a list of incidents
class IncidentListResponse {
  /// Optional. The monitored resource for which incidents are listed. The resource doesn't need to be fully specified. That is, you can specify the resource type but not the values of the resource labels. The resource type and labels are used for filtering.
  final pulumi.Input<List<MonitoredResourceResponse>> monitoredResources;

  /// Optional. A list of alert policy names to filter the incident list by. Don't include the project ID prefix in the policy name. For example, use alertPolicies/utilization.
  final pulumi.Input<List<String>> policyNames;

  /// Creates a new [IncidentListResponse].
  /// [monitoredResources] Optional. The monitored resource for which incidents are listed. The resource doesn't need to be fully specified. That is, you can specify the resource type but not the values of the resource labels. The resource type and labels are used for filtering.
  /// [policyNames] Optional. A list of alert policy names to filter the incident list by. Don't include the project ID prefix in the policy name. For example, use alertPolicies/utilization.
  IncidentListResponse({
    required this.monitoredResources,
    required this.policyNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoredResources':
          pulumi.Input.mapInputValue<
            List<MonitoredResourceResponse>,
            List<Map<String, dynamic>>
          >(
            monitoredResources,
            (value) =>
                pulumi.Input.encodeList<
                  MonitoredResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'policyNames': policyNames,
    };
  }

  factory IncidentListResponse.fromMap(Map<String, dynamic> map) {
    return IncidentListResponse(
      monitoredResources: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MonitoredResourceResponse>(
          map['monitoredResources']!,
          (value) => MonitoredResourceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      policyNames: pulumi.Input.fromValue(
        (map['policyNames'] as List).cast<String>(),
      ),
    );
  }
}
