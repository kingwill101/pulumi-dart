// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_resource.dart';

/// A widget that displays a list of incidents
class IncidentList {
  /// Optional. The monitored resource for which incidents are listed. The resource doesn't need to be fully specified. That is, you can specify the resource type but not the values of the resource labels. The resource type and labels are used for filtering.
  final pulumi.Input<List<MonitoredResource>>? monitoredResources;

  /// Optional. A list of alert policy names to filter the incident list by. Don't include the project ID prefix in the policy name. For example, use alertPolicies/utilization.
  final pulumi.Input<List<String>>? policyNames;

  /// Creates a new [IncidentList].
  /// [monitoredResources] Optional. The monitored resource for which incidents are listed. The resource doesn't need to be fully specified. That is, you can specify the resource type but not the values of the resource labels. The resource type and labels are used for filtering.
  /// [policyNames] Optional. A list of alert policy names to filter the incident list by. Don't include the project ID prefix in the policy name. For example, use alertPolicies/utilization.
  IncidentList({this.monitoredResources, this.policyNames});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoredResources':
          ?pulumi.Input.mapOptionalInputValue<
            List<MonitoredResource>,
            List<Map<String, dynamic>>
          >(
            monitoredResources,
            (value) =>
                pulumi.Input.encodeList<
                  MonitoredResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'policyNames': ?policyNames,
    };
  }

  factory IncidentList.fromMap(Map<String, dynamic> map) {
    return IncidentList(
      monitoredResources: (() {
        final guardedValue = map['monitoredResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MonitoredResource>(
            guardedValue,
            (value) => MonitoredResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      policyNames: (() {
        final guardedValue = map['policyNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
