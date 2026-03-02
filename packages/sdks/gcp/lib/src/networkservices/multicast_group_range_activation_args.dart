// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_range_activation_log_config.dart';

/// {@template pulumi_networkservices_multicast_group_range_activation_multicast_group_range_activation_args_doc}
/// The set of arguments for MulticastGroupRangeActivation.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_group_range_activation_multicast_group_range_activation_args_doc}
class MulticastGroupRangeActivationArgs {
  /// An optional text description of the multicast group range activation.
  final pulumi.Input<String>? description;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The logging configuration.
  /// Structure is documented below.
  final pulumi.Input<MulticastGroupRangeActivationLogConfig>? logConfig;
  /// The resource name of a multicast domain activation that is in the
  /// same zone as this multicast group.
  /// Use the following format:
  /// `projects/*/locations/*/multicastDomainActivations/*`
  final pulumi.Input<String> multicastDomainActivation;
  /// The resource name of the global multicast group range for the
  /// group. Use the following format:
  /// `projects/*/locations/global/multicastGroupRanges/*`
  final pulumi.Input<String> multicastGroupRange;
  /// A unique name for the multicast group range activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastGroupRangeActivationId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MulticastGroupRangeActivationArgs].
  /// [description] An optional text description of the multicast group range activation.
  /// [labels] Labels as key-value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logConfig] The logging configuration.
  /// [multicastDomainActivation] The resource name of a multicast domain activation that is in the
  /// [multicastGroupRange] The resource name of the global multicast group range for the
  /// [multicastGroupRangeActivationId] A unique name for the multicast group range activation.
  /// [project] The ID of the project in which the resource belongs.
  MulticastGroupRangeActivationArgs({
    this.description,
    this.labels,
    required this.location,
    this.logConfig,
    required this.multicastDomainActivation,
    required this.multicastGroupRange,
    required this.multicastGroupRangeActivationId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<MulticastGroupRangeActivationLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'multicastDomainActivation': multicastDomainActivation,
      'multicastGroupRange': multicastGroupRange,
      'multicastGroupRangeActivationId': multicastGroupRangeActivationId,
      'project': ?project,
    };
  }

  factory MulticastGroupRangeActivationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeActivationArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      logConfig: map['logConfig'] == null ? null : (MulticastGroupRangeActivationLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())).input(),
      multicastDomainActivation: (map['multicastDomainActivation'] as String).input(),
      multicastGroupRange: (map['multicastGroupRange'] as String).input(),
      multicastGroupRangeActivationId: (map['multicastGroupRangeActivationId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

