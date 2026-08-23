// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AzureTrafficCollector resources.
class AzureTrafficCollectorState {
  /// The list of Resource IDs of collector policies.
  final pulumi.Input<List<String>>? collectorPolicyIds;
  /// Specifies the Azure Region where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Network Function Azure Traffic Collector. Changing this forces a new Network Function Azure Traffic Collector to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Network Function Azure Traffic Collector.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Resource ID of virtual hub.
  final pulumi.Input<List<String>>? virtualHubIds;

  /// Creates a new [AzureTrafficCollectorState].
  /// [collectorPolicyIds] The list of Resource IDs of collector policies.
  /// [location] Specifies the Azure Region where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  /// [name] Specifies the name which should be used for this Network Function Azure Traffic Collector. Changing this forces a new Network Function Azure Traffic Collector to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  /// [tags] A mapping of tags which should be assigned to the Network Function Azure Traffic Collector.
  /// [virtualHubIds] The Resource ID of virtual hub.
  const AzureTrafficCollectorState({
    this.collectorPolicyIds,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.virtualHubIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorPolicyIds': ?collectorPolicyIds,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualHubIds': ?virtualHubIds,
    };
  }

  factory AzureTrafficCollectorState.fromMap(Map<String, dynamic> map) {
    return AzureTrafficCollectorState(
      collectorPolicyIds: (() { final guardedValue = map['collectorPolicyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHubIds: (() { final guardedValue = map['virtualHubIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
