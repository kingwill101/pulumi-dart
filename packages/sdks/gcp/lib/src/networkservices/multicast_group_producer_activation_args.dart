// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_multicast_group_producer_activation_multicast_group_producer_activation_args_doc}
/// The set of arguments for MulticastGroupProducerActivation.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_group_producer_activation_multicast_group_producer_activation_args_doc}
class MulticastGroupProducerActivationArgs {
  /// An optional text description of the multicast group producer activation.
  final pulumi.Input<String>? description;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// A unique name for the multicast group producer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastGroupProducerActivationId;
  /// The resource name of the multicast group range activationcreated by the
  /// admin in the same zone as this multicast group producer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final pulumi.Input<String> multicastGroupRangeActivation;
  /// The resource name of the multicast producer association that is in the
  /// same zone as this multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastProducerAssociations/*`.
  final pulumi.Input<String> multicastProducerAssociation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MulticastGroupProducerActivationArgs].
  /// [description] An optional text description of the multicast group producer activation.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastGroupProducerActivationId] A unique name for the multicast group producer activation.
  /// [multicastGroupRangeActivation] The resource name of the multicast group range activationcreated by the
  /// [multicastProducerAssociation] The resource name of the multicast producer association that is in the
  /// [project] The ID of the project in which the resource belongs.
  MulticastGroupProducerActivationArgs({
    this.description,
    this.labels,
    required this.location,
    required this.multicastGroupProducerActivationId,
    required this.multicastGroupRangeActivation,
    required this.multicastProducerAssociation,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'multicastGroupProducerActivationId': multicastGroupProducerActivationId,
      'multicastGroupRangeActivation': multicastGroupRangeActivation,
      'multicastProducerAssociation': multicastProducerAssociation,
      'project': ?project,
    };
  }

  factory MulticastGroupProducerActivationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupProducerActivationArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      multicastGroupProducerActivationId: (map['multicastGroupProducerActivationId'] as String).input(),
      multicastGroupRangeActivation: (map['multicastGroupRangeActivation'] as String).input(),
      multicastProducerAssociation: (map['multicastProducerAssociation'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

