// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkfunction_get_azure_traffic_collector_args_doc}
/// Arguments for getAzureTrafficCollector.
/// {@endtemplate}
/// {@macro pulumi_networkfunction_get_azure_traffic_collector_args_doc}
class GetAzureTrafficCollectorArgs {
  /// Azure Traffic Collector name
  final pulumi.Input<String> azureTrafficCollectorName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAzureTrafficCollectorArgs].
  /// [azureTrafficCollectorName] Azure Traffic Collector name
  /// [resourceGroupName] The name of the resource group.
  GetAzureTrafficCollectorArgs({
    required pulumi.Output<String> azureTrafficCollectorName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      azureTrafficCollectorName = pulumi.Input.asInput<String>(azureTrafficCollectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureTrafficCollectorName': azureTrafficCollectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureTrafficCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureTrafficCollectorArgs(
      azureTrafficCollectorName: pulumi.Output.create<String>(map['azureTrafficCollectorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

