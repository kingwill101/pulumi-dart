// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_range_log_config.dart';

/// {@template pulumi_networkservices_multicast_group_range_multicast_group_range_args_doc}
/// The set of arguments for MulticastGroupRange.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_group_range_multicast_group_range_args_doc}
class MulticastGroupRangeArgs {
  /// A list of consumer projects that are allowed to subscribe to the multicast
  /// IP addresses within the range defined by this MulticastGroupRange. The
  /// project can be specified using its project ID or project number. If left
  /// empty, then all consumer projects are allowed (unless
  /// require_explicit_accept is set to true) once they have VPC networks
  /// associated to the multicast domain. The current max length of the accept
  /// list is 100.
  final pulumi.Input<List<String>>? consumerAcceptLists;
  /// An optional text description of the multicast group range.
  final pulumi.Input<String>? description;
  /// Multicast group range's distribution scope. Intra-zone or intra-region
  /// cross-zone is supported, with default value being intra-region. Cross
  /// region distribution is not supported.
  /// Possible values:
  /// INTRA_ZONE
  /// INTRA_REGION
  final pulumi.Input<String>? distributionScope;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The logging configuration.
  /// Structure is documented below.
  final pulumi.Input<MulticastGroupRangeLogConfig>? logConfig;
  /// The resource name of the multicast domain in which to create this
  /// multicast group range.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  final pulumi.Input<String> multicastDomain;
  /// A unique name for the multicast group range.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastGroupRangeId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Whether an empty consumer_accept_list will deny all consumer projects.
  final pulumi.Input<bool>? requireExplicitAccept;
  /// The resource name of the internal range reserved for this
  /// multicast group range.
  /// The internal range must be a Class D address (224.0.0.0 to 239.255.255.255)
  /// and have a prefix length >= 23.
  /// Use the following format:
  /// `projects/*/locations/global/internalRanges/*`.
  final pulumi.Input<String> reservedInternalRange;

  /// Creates a new [MulticastGroupRangeArgs].
  /// [consumerAcceptLists] A list of consumer projects that are allowed to subscribe to the multicast
  /// [description] An optional text description of the multicast group range.
  /// [distributionScope] Multicast group range's distribution scope. Intra-zone or intra-region
  /// [labels] Labels as key-value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logConfig] The logging configuration.
  /// [multicastDomain] The resource name of the multicast domain in which to create this
  /// [multicastGroupRangeId] A unique name for the multicast group range.
  /// [project] The ID of the project in which the resource belongs.
  /// [requireExplicitAccept] Whether an empty consumer_accept_list will deny all consumer projects.
  /// [reservedInternalRange] The resource name of the internal range reserved for this
  MulticastGroupRangeArgs({
    this.consumerAcceptLists,
    this.description,
    this.distributionScope,
    this.labels,
    required this.location,
    this.logConfig,
    required this.multicastDomain,
    required this.multicastGroupRangeId,
    this.project,
    this.requireExplicitAccept,
    required this.reservedInternalRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerAcceptLists': ?consumerAcceptLists,
      'description': ?description,
      'distributionScope': ?distributionScope,
      'labels': ?labels,
      'location': location,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<MulticastGroupRangeLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'multicastDomain': multicastDomain,
      'multicastGroupRangeId': multicastGroupRangeId,
      'project': ?project,
      'requireExplicitAccept': ?requireExplicitAccept,
      'reservedInternalRange': reservedInternalRange,
    };
  }

  factory MulticastGroupRangeArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeArgs(
      consumerAcceptLists: map['consumerAcceptLists'] == null ? null : ((map['consumerAcceptLists']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      distributionScope: map['distributionScope'] == null ? null : (map['distributionScope']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      logConfig: map['logConfig'] == null ? null : (MulticastGroupRangeLogConfig.fromMap((map['logConfig']! as Map).cast<String, dynamic>())).input(),
      multicastDomain: (map['multicastDomain'] as String).input(),
      multicastGroupRangeId: (map['multicastGroupRangeId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requireExplicitAccept: map['requireExplicitAccept'] == null ? null : (map['requireExplicitAccept']! as bool).input(),
      reservedInternalRange: (map['reservedInternalRange'] as String).input(),
    );
  }
}

