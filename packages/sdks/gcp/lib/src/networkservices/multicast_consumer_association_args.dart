// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_multicast_consumer_association_multicast_consumer_association_args_doc}
/// The set of arguments for MulticastConsumerAssociation.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_consumer_association_multicast_consumer_association_args_doc}
class MulticastConsumerAssociationArgs {
  /// An optional text description of the multicast consumer association.
  final pulumi.Input<String>? description;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// A unique name for the multicast consumer association.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastConsumerAssociationId;
  /// The resource name of the multicast domain activation that is in the
  /// same zone as this multicast consumer association.
  /// Use the following format:
  /// // `projects/*/locations/*/multicastDomainActivations/*`.
  final pulumi.Input<String> multicastDomainActivation;
  /// The resource name of the multicast consumer VPC network.
  /// Use following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MulticastConsumerAssociationArgs].
  /// [description] An optional text description of the multicast consumer association.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastConsumerAssociationId] A unique name for the multicast consumer association.
  /// [multicastDomainActivation] The resource name of the multicast domain activation that is in the
  /// [network] The resource name of the multicast consumer VPC network.
  /// [project] The ID of the project in which the resource belongs.
  MulticastConsumerAssociationArgs({
    this.description,
    this.labels,
    required this.location,
    required this.multicastConsumerAssociationId,
    required this.multicastDomainActivation,
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'multicastConsumerAssociationId': multicastConsumerAssociationId,
      'multicastDomainActivation': multicastDomainActivation,
      'network': network,
      'project': ?project,
    };
  }

  factory MulticastConsumerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastConsumerAssociationArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      multicastConsumerAssociationId: (map['multicastConsumerAssociationId'] as String).input(),
      multicastDomainActivation: (map['multicastDomainActivation'] as String).input(),
      network: (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

