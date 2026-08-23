// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_endpoint.dart';

/// {@template pulumi_networkconnectivity_destination_destination_args_doc}
/// The set of arguments for Destination.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_destination_destination_args_doc}
class DestinationArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of this resource.
  /// [endpoints] The list of DestinationEndpoint resources configured for the IP prefix.
  /// [ipPrefix] The IP prefix that represents your workload on another CSP.
  /// [labels] User-defined labels.
  /// [location] The location of the destination.
  /// [multicloudDataTransferConfig] The multicloud data transfer config of the destination.
  /// [name] The name of the destination.
  /// [project] The ID of the project in which the resource belongs.
  const DestinationArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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
