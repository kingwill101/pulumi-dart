// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_vpcresponse.dart';
import 'spoke_summary_response.dart';

/// Result data returned by getHub.
class GetHubResult {
  /// The time the hub was created.
  final String? createTime;
  /// An optional description of the hub.
  final String? description;
  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  final Map<String, String>? labels;
  /// Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  final String? name;
  /// The route tables that belong to this hub. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}/routeTables/{route_table_id}` This field is read-only. Network Connectivity Center automatically populates it based on the route tables nested under the hub.
  final List<String>? routeTables;
  /// The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  final List<RoutingVPCResponse>? routingVpcs;
  /// A summary of the spokes associated with a hub. The summary includes a count of spokes according to type and according to state. If any spokes are inactive, the summary also lists the reasons they are inactive, including a count for each reason.
  final SpokeSummaryResponse? spokeSummary;
  /// The current lifecycle state of this hub.
  final String? state;
  /// The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  final String? uniqueId;
  /// The time the hub was last updated.
  final String? updateTime;

  /// Creates a new [GetHubResult].
  /// [createTime] The time the hub was created.
  /// [description] An optional description of the hub.
  /// [labels] Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [name] Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  /// [routeTables] The route tables that belong to this hub. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}/routeTables/{route_table_id}` This field is read-only. Network Connectivity Center automatically populates it based on the route tables nested under the hub.
  /// [routingVpcs] The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  /// [spokeSummary] A summary of the spokes associated with a hub. The summary includes a count of spokes according to type and according to state. If any spokes are inactive, the summary also lists the reasons they are inactive, including a count for each reason.
  /// [state] The current lifecycle state of this hub.
  /// [uniqueId] The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  /// [updateTime] The time the hub was last updated.
  const GetHubResult({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.routeTables,
    this.routingVpcs,
    this.spokeSummary,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'routeTables': ?routeTables,
      'routingVpcs': ?(() { final guardedValue = routingVpcs; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoutingVPCResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'spokeSummary': ?spokeSummary?.toMap(),
      'state': ?state,
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory GetHubResult.fromMap(Map<String, dynamic> map) {
    return GetHubResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeTables: (() { final guardedValue = map['routeTables']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      routingVpcs: (() { final guardedValue = map['routingVpcs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoutingVPCResponse>(guardedValue, (value) => RoutingVPCResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      spokeSummary: (() { final guardedValue = map['spokeSummary']; if (guardedValue == null) return null; return SpokeSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
