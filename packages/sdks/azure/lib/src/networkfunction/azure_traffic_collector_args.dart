// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkfunction_azure_traffic_collector_azure_traffic_collector_args_doc}
/// The set of arguments for AzureTrafficCollector.
/// {@endtemplate}
/// {@macro pulumi_networkfunction_azure_traffic_collector_azure_traffic_collector_args_doc}
class AzureTrafficCollectorArgs {
  /// Specifies the Azure Region where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Network Function Azure Traffic Collector. Changing this forces a new Network Function Azure Traffic Collector to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Network Function Azure Traffic Collector.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureTrafficCollectorArgs].
  /// [location] Specifies the Azure Region where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  /// [name] Specifies the name which should be used for this Network Function Azure Traffic Collector. Changing this forces a new Network Function Azure Traffic Collector to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created.
  /// [tags] A mapping of tags which should be assigned to the Network Function Azure Traffic Collector.
  const AzureTrafficCollectorArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AzureTrafficCollectorArgs.fromMap(Map<String, dynamic> map) {
    return AzureTrafficCollectorArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
