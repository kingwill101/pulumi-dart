// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_enrichment_enrichment_args_doc}
/// The set of arguments for Enrichment.
/// {@endtemplate}
/// {@macro pulumi_iot_enrichment_enrichment_args_doc}
class EnrichmentArgs {
  /// The list of endpoints which will be enriched.
  final pulumi.Input<List<String>> endpointNames;
  /// The IoTHub name of the enrichment. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubName;
  /// The key of the enrichment. Changing this forces a new resource to be created.
  final pulumi.Input<String> key;
  /// The name of the resource group under which the IoTHub resource is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The value of the enrichment. Value can be any static string, the name of the IoT hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`)
  final pulumi.Input<String> value;

  /// Creates a new [EnrichmentArgs].
  /// [endpointNames] The list of endpoints which will be enriched.
  /// [iothubName] The IoTHub name of the enrichment. Changing this forces a new resource to be created.
  /// [key] The key of the enrichment. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the IoTHub resource is created. Changing this forces a new resource to be created.
  /// [value] The value of the enrichment. Value can be any static string, the name of the IoT hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`)
  const EnrichmentArgs({
    required this.endpointNames,
    required this.iothubName,
    required this.key,
    required this.resourceGroupName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointNames': endpointNames,
      'iothubName': iothubName,
      'key': key,
      'resourceGroupName': resourceGroupName,
      'value': value,
    };
  }

  factory EnrichmentArgs.fromMap(Map<String, dynamic> map) {
    return EnrichmentArgs(
      endpointNames: pulumi.Input.fromValue((map['endpointNames'] as List).cast<String>()),
      iothubName: pulumi.Input.fromValue(map['iothubName'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
