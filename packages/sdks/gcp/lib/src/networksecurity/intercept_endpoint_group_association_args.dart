// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_intercept_endpoint_group_association_intercept_endpoint_group_association_args_doc}
/// The set of arguments for InterceptEndpointGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_intercept_endpoint_group_association_intercept_endpoint_group_association_args_doc}
class InterceptEndpointGroupAssociationArgs {
  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> interceptEndpointGroup;
  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  final pulumi.Input<String>? interceptEndpointGroupAssociationId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the association, currently restricted to `global`.
  final pulumi.Input<String> location;
  /// The VPC network that is associated. for example:
  /// `projects/123456789/global/networks/my-network`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InterceptEndpointGroupAssociationArgs].
  /// [interceptEndpointGroup] The endpoint group that this association is connected to, for example:
  /// [interceptEndpointGroupAssociationId] The ID to use for the new association, which will become the final
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the association, currently restricted to `global`.
  /// [network] The VPC network that is associated. for example:
  /// [project] The ID of the project in which the resource belongs.
  InterceptEndpointGroupAssociationArgs({
    required this.interceptEndpointGroup,
    this.interceptEndpointGroupAssociationId,
    this.labels,
    required this.location,
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interceptEndpointGroup': interceptEndpointGroup,
      'interceptEndpointGroupAssociationId': ?interceptEndpointGroupAssociationId,
      'labels': ?labels,
      'location': location,
      'network': network,
      'project': ?project,
    };
  }

  factory InterceptEndpointGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return InterceptEndpointGroupAssociationArgs(
      interceptEndpointGroup: (map['interceptEndpointGroup'] as String).input(),
      interceptEndpointGroupAssociationId: map['interceptEndpointGroupAssociationId'] == null ? null : (map['interceptEndpointGroupAssociationId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      network: (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

