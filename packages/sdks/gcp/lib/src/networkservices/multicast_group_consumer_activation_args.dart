// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_consumer_activation_log_config.dart';

/// {@template pulumi_networkservices_multicast_group_consumer_activation_multicast_group_consumer_activation_args_doc}
/// The set of arguments for MulticastGroupConsumerActivation.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_group_consumer_activation_multicast_group_consumer_activation_args_doc}
class MulticastGroupConsumerActivationArgs {
  /// An optional text description of the multicast group consumer activation.
  final pulumi.Input<String>? description;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The logging configuration.
  /// Structure is documented below.
  final pulumi.Input<MulticastGroupConsumerActivationLogConfig>? logConfig;
  /// The resource name of the multicast consumer association that is in the
  /// same zone as this multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  final pulumi.Input<String> multicastConsumerAssociation;
  /// A unique name for the multicast group consumer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastGroupConsumerActivationId;
  /// The resource name of the multicast group range activation created by the
  /// admin in the same zone as this multicast group consumer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final pulumi.Input<String> multicastGroupRangeActivation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MulticastGroupConsumerActivationArgs].
  /// [description] An optional text description of the multicast group consumer activation.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logConfig] The logging configuration.
  /// [multicastConsumerAssociation] The resource name of the multicast consumer association that is in the
  /// [multicastGroupConsumerActivationId] A unique name for the multicast group consumer activation.
  /// [multicastGroupRangeActivation] The resource name of the multicast group range activation created by the
  /// [project] The ID of the project in which the resource belongs.
  MulticastGroupConsumerActivationArgs({
    this.description,
    this.labels,
    required this.location,
    this.logConfig,
    required this.multicastConsumerAssociation,
    required this.multicastGroupConsumerActivationId,
    required this.multicastGroupRangeActivation,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<MulticastGroupConsumerActivationLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'multicastConsumerAssociation': multicastConsumerAssociation,
      'multicastGroupConsumerActivationId': multicastGroupConsumerActivationId,
      'multicastGroupRangeActivation': multicastGroupRangeActivation,
      'project': ?project,
    };
  }

  factory MulticastGroupConsumerActivationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupConsumerActivationArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      logConfig: map['logConfig'] == null ? null : (MulticastGroupConsumerActivationLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())).input(),
      multicastConsumerAssociation: (map['multicastConsumerAssociation'] as String).input(),
      multicastGroupConsumerActivationId: (map['multicastGroupConsumerActivationId'] as String).input(),
      multicastGroupRangeActivation: (map['multicastGroupRangeActivation'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

