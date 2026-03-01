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
  AzureTrafficCollectorState({
    pulumi.Output<List<String>>? collectorPolicyIds,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? virtualHubIds,
  }) :
      collectorPolicyIds = pulumi.Input.asOptionalInput<List<String>>(collectorPolicyIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHubIds = pulumi.Input.asOptionalInput<List<String>>(virtualHubIds);

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
      collectorPolicyIds: map['collectorPolicyIds'] == null ? null : pulumi.Output.create<List<String>>((map['collectorPolicyIds'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualHubIds: map['virtualHubIds'] == null ? null : pulumi.Output.create<List<String>>((map['virtualHubIds'] as List).cast<String>()),
    );
  }
}

