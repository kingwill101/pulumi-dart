// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkfunction_azure_traffic_collector_args_doc}
/// The set of arguments for AzureTrafficCollector.
/// {@endtemplate}
/// {@macro pulumi_networkfunction_azure_traffic_collector_args_doc}
class AzureTrafficCollectorArgs {
  /// Azure Traffic Collector name
  final pulumi.Input<String>? azureTrafficCollectorName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureTrafficCollectorArgs].
  /// [azureTrafficCollectorName] Azure Traffic Collector name
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  AzureTrafficCollectorArgs({
    this.azureTrafficCollectorName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureTrafficCollectorName': ?azureTrafficCollectorName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AzureTrafficCollectorArgs.fromMap(Map<String, dynamic> map) {
    return AzureTrafficCollectorArgs(
      azureTrafficCollectorName: map['azureTrafficCollectorName'] == null ? null : (map['azureTrafficCollectorName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

