// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_activedirectory_peering_peering_args_doc}
/// The set of arguments for Peering.
/// {@endtemplate}
/// {@macro pulumi_activedirectory_peering_peering_args_doc}
class PeeringArgs {
  /// The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  final pulumi.Input<String> authorizedNetwork;
  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}
  final pulumi.Input<String> domainResource;
  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// (Required)
  final pulumi.Input<String> peeringId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The current state of this Peering.
  final pulumi.Input<String>? status;
  /// Additional information about the current status of this peering, if available.
  final pulumi.Input<String>? statusMessage;

  /// Creates a new [PeeringArgs].
  /// [authorizedNetwork] The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  /// [domainResource] Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}
  /// [labels] Resource labels that can contain user-provided metadata
  /// [peeringId] (Required)
  /// [project] The ID of the project in which the resource belongs.
  /// [status] The current state of this Peering.
  /// [statusMessage] Additional information about the current status of this peering, if available.
  PeeringArgs({
    required pulumi.Output<String> authorizedNetwork,
    required pulumi.Output<String> domainResource,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> peeringId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
  }) :
      authorizedNetwork = pulumi.Input.asInput<String>(authorizedNetwork),
      domainResource = pulumi.Input.asInput<String>(domainResource),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      peeringId = pulumi.Input.asInput<String>(peeringId),
      project = pulumi.Input.asOptionalInput<String>(project),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': authorizedNetwork,
      'domainResource': domainResource,
      'labels': ?labels,
      'peeringId': peeringId,
      'project': ?project,
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory PeeringArgs.fromMap(Map<String, dynamic> map) {
    return PeeringArgs(
      authorizedNetwork: pulumi.Output.create<String>(map['authorizedNetwork'] as String),
      domainResource: pulumi.Output.create<String>(map['domainResource'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      peeringId: pulumi.Output.create<String>(map['peeringId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
    );
  }
}

