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
    pulumi.Output<String>? azureTrafficCollectorName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      azureTrafficCollectorName = pulumi.Input.asOptionalInput<String>(azureTrafficCollectorName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      azureTrafficCollectorName: map['azureTrafficCollectorName'] == null ? null : pulumi.Output.create<String>(map['azureTrafficCollectorName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

