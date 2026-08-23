// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkfunction_get_azure_traffic_collector_args_doc}
/// Arguments for getAzureTrafficCollector.
/// {@endtemplate}
/// {@macro pulumi_networkfunction_get_azure_traffic_collector_args_doc}
class GetAzureTrafficCollectorArgs {
  /// Azure Traffic Collector name
  final pulumi.Input<String> azureTrafficCollectorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAzureTrafficCollectorArgs].
  /// [azureTrafficCollectorName] Azure Traffic Collector name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAzureTrafficCollectorArgs({
    required this.azureTrafficCollectorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureTrafficCollectorName': azureTrafficCollectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureTrafficCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureTrafficCollectorArgs(
      azureTrafficCollectorName: pulumi.Input.fromValue(map['azureTrafficCollectorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
