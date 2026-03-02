// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Enrichment resources.
class EnrichmentState {
  /// The list of endpoints which will be enriched.
  final pulumi.Input<List<String>>? endpointNames;
  /// The IoTHub name of the enrichment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubName;
  /// The key of the enrichment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? key;
  /// The name of the resource group under which the IoTHub resource is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The value of the enrichment. Value can be any static string, the name of the IoT hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`)
  final pulumi.Input<String>? value;

  /// Creates a new [EnrichmentState].
  /// [endpointNames] The list of endpoints which will be enriched.
  /// [iothubName] The IoTHub name of the enrichment. Changing this forces a new resource to be created.
  /// [key] The key of the enrichment. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the IoTHub resource is created. Changing this forces a new resource to be created.
  /// [value] The value of the enrichment. Value can be any static string, the name of the IoT hub sending the message (use `$iothubname`) or information from the device twin (ex: `$twin.tags.latitude`)
  EnrichmentState({
    this.endpointNames,
    this.iothubName,
    this.key,
    this.resourceGroupName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointNames': ?endpointNames,
      'iothubName': ?iothubName,
      'key': ?key,
      'resourceGroupName': ?resourceGroupName,
      'value': ?value,
    };
  }

  factory EnrichmentState.fromMap(Map<String, dynamic> map) {
    return EnrichmentState(
      endpointNames: map['endpointNames'] == null ? null : ((map['endpointNames'] as List).cast<String>()).input(),
      iothubName: map['iothubName'] == null ? null : (map['iothubName'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

