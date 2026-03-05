// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_endpoint.dart';

/// {@template pulumi_networkconnectivity_destination_destination_args_doc}
/// The set of arguments for Destination.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_destination_destination_args_doc}
class DestinationArgs {
  /// A description of this resource.
  final pulumi.Input<String>? description;
  /// The list of DestinationEndpoint resources configured for the IP prefix.
  /// Structure is documented below.
  final pulumi.Input<List<DestinationEndpoint>> endpoints;
  /// The IP prefix that represents your workload on another CSP.
  final pulumi.Input<String> ipPrefix;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the destination.
  final pulumi.Input<String> location;
  /// The multicloud data transfer config of the destination.
  final pulumi.Input<String> multicloudDataTransferConfig;
  /// The name of the destination.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DestinationArgs].
  /// [description] A description of this resource.
  /// [endpoints] The list of DestinationEndpoint resources configured for the IP prefix.
  /// [ipPrefix] The IP prefix that represents your workload on another CSP.
  /// [labels] User-defined labels.
  /// [location] The location of the destination.
  /// [multicloudDataTransferConfig] The multicloud data transfer config of the destination.
  /// [name] The name of the destination.
  /// [project] The ID of the project in which the resource belongs.
  DestinationArgs({
    this.description,
    required this.endpoints,
    required this.ipPrefix,
    this.labels,
    required this.location,
    required this.multicloudDataTransferConfig,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpoints': pulumi.Input.mapInputValue<List<DestinationEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<DestinationEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipPrefix': ipPrefix,
      'labels': ?labels,
      'location': location,
      'multicloudDataTransferConfig': multicloudDataTransferConfig,
      'name': ?name,
      'project': ?project,
    };
  }

  factory DestinationArgs.fromMap(Map<String, dynamic> map) {
    return DestinationArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<DestinationEndpoint>(map['endpoints']!, (value) => DestinationEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      ipPrefix: pulumi.Input.fromValue(map['ipPrefix'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      multicloudDataTransferConfig: pulumi.Input.fromValue(map['multicloudDataTransferConfig'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

