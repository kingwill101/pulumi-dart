// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_mirroring_endpoint_group_association_mirroring_endpoint_group_association_args_doc}
/// The set of arguments for MirroringEndpointGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_mirroring_endpoint_group_association_mirroring_endpoint_group_association_args_doc}
class MirroringEndpointGroupAssociationArgs {
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the association, currently restricted to `global`.
  final pulumi.Input<String> location;
  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> mirroringEndpointGroup;
  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  final pulumi.Input<String>? mirroringEndpointGroupAssociationId;
  /// The VPC network that is associated. for example:
  /// `projects/123456789/global/networks/my-network`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MirroringEndpointGroupAssociationArgs].
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the association, currently restricted to `global`.
  /// [mirroringEndpointGroup] The endpoint group that this association is connected to, for example:
  /// [mirroringEndpointGroupAssociationId] The ID to use for the new association, which will become the final
  /// [network] The VPC network that is associated. for example:
  /// [project] The ID of the project in which the resource belongs.
  MirroringEndpointGroupAssociationArgs({
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    required pulumi.Output<String> mirroringEndpointGroup,
    pulumi.Output<String>? mirroringEndpointGroupAssociationId,
    required pulumi.Output<String> network,
    pulumi.Output<String>? project,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      mirroringEndpointGroup = pulumi.Input.asInput<String>(mirroringEndpointGroup),
      mirroringEndpointGroupAssociationId = pulumi.Input.asOptionalInput<String>(mirroringEndpointGroupAssociationId),
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': location,
      'mirroringEndpointGroup': mirroringEndpointGroup,
      'mirroringEndpointGroupAssociationId': ?mirroringEndpointGroupAssociationId,
      'network': network,
      'project': ?project,
    };
  }

  factory MirroringEndpointGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointGroupAssociationArgs(
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      mirroringEndpointGroup: pulumi.Output.create<String>(map['mirroringEndpointGroup'] as String),
      mirroringEndpointGroupAssociationId: map['mirroringEndpointGroupAssociationId'] == null ? null : pulumi.Output.create<String>(map['mirroringEndpointGroupAssociationId'] as String),
      network: pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

