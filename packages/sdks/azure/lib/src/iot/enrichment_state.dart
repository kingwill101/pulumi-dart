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
      endpointNames: (() {
        final guardedValue = map['endpointNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      iothubName: (() {
        final guardedValue = map['iothubName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
