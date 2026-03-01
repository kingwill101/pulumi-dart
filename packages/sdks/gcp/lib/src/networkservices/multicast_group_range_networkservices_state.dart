// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_range_log_config.dart';
import 'multicast_group_range_state.dart';

/// Input properties used for looking up and filtering MulticastGroupRange resources.
class MulticastGroupRangeNetworkservicesState {
  /// A list of consumer projects that are allowed to subscribe to the multicast
  /// IP addresses within the range defined by this MulticastGroupRange. The
  /// project can be specified using its project ID or project number. If left
  /// empty, then all consumer projects are allowed (unless
  /// require_explicit_accept is set to true) once they have VPC networks
  /// associated to the multicast domain. The current max length of the accept
  /// list is 100.
  final pulumi.Input<List<String>>? consumerAcceptLists;
  /// [Output only] The timestamp when the multicast group range was
  /// created.
  final pulumi.Input<String>? createTime;
  /// An optional text description of the multicast group range.
  final pulumi.Input<String>? description;
  /// Multicast group range's distribution scope. Intra-zone or intra-region
  /// cross-zone is supported, with default value being intra-region. Cross
  /// region distribution is not supported.
  /// Possible values:
  /// INTRA_ZONE
  /// INTRA_REGION
  final pulumi.Input<String>? distributionScope;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// [Output only] The multicast group IP address range.
  final pulumi.Input<String>? ipCidrRange;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The logging configuration.
  /// Structure is documented below.
  final pulumi.Input<MulticastGroupRangeLogConfig>? logConfig;
  /// The resource name of the multicast domain in which to create this
  /// multicast group range.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  final pulumi.Input<String>? multicastDomain;
  /// A unique name for the multicast group range.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String>? multicastGroupRangeId;
  /// Identifier. The resource name of the multicast group range.
  /// Use the following format:
  /// `projects/*/locations/global/multicastGroupRanges/*`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Whether an empty consumer_accept_list will deny all consumer projects.
  final pulumi.Input<bool>? requireExplicitAccept;
  /// The resource name of the internal range reserved for this
  /// multicast group range.
  /// The internal range must be a Class D address (224.0.0.0 to 239.255.255.255)
  /// and have a prefix length >= 23.
  /// Use the following format:
  /// `projects/*/locations/global/internalRanges/*`.
  final pulumi.Input<String>? reservedInternalRange;
  /// (Output)
  /// The state of the multicast resource.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// UPDATING
  /// UPDATE_FAILED
  /// INACTIVE
  final pulumi.Input<List<MulticastGroupRangeState>>? states;
  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast group range resources. If a group
  /// range is deleted and another with the same name is created, the new
  /// group range is assigned a different unique_id.
  final pulumi.Input<String>? uniqueId;
  /// [Output only] The timestamp when the multicast group range was most
  /// recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MulticastGroupRangeNetworkservicesState].
  /// [consumerAcceptLists] A list of consumer projects that are allowed to subscribe to the multicast
  /// [createTime] [Output only] The timestamp when the multicast group range was
  /// [description] An optional text description of the multicast group range.
  /// [distributionScope] Multicast group range's distribution scope. Intra-zone or intra-region
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ipCidrRange] [Output only] The multicast group IP address range.
  /// [labels] Labels as key-value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logConfig] The logging configuration.
  /// [multicastDomain] The resource name of the multicast domain in which to create this
  /// [multicastGroupRangeId] A unique name for the multicast group range.
  /// [name] Identifier. The resource name of the multicast group range.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [requireExplicitAccept] Whether an empty consumer_accept_list will deny all consumer projects.
  /// [reservedInternalRange] The resource name of the internal range reserved for this
  /// [states] (Output)
  /// [uniqueId] [Output only] The Google-generated UUID for the resource. This value is
  /// [updateTime] [Output only] The timestamp when the multicast group range was most
  MulticastGroupRangeNetworkservicesState({
    pulumi.Output<List<String>>? consumerAcceptLists,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? distributionScope,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? ipCidrRange,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MulticastGroupRangeLogConfig>? logConfig,
    pulumi.Output<String>? multicastDomain,
    pulumi.Output<String>? multicastGroupRangeId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? requireExplicitAccept,
    pulumi.Output<String>? reservedInternalRange,
    pulumi.Output<List<MulticastGroupRangeState>>? states,
    pulumi.Output<String>? uniqueId,
    pulumi.Output<String>? updateTime,
  }) :
      consumerAcceptLists = pulumi.Input.asOptionalInput<List<String>>(consumerAcceptLists),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      distributionScope = pulumi.Input.asOptionalInput<String>(distributionScope),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      ipCidrRange = pulumi.Input.asOptionalInput<String>(ipCidrRange),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      logConfig = pulumi.Input.asOptionalInput<MulticastGroupRangeLogConfig>(logConfig),
      multicastDomain = pulumi.Input.asOptionalInput<String>(multicastDomain),
      multicastGroupRangeId = pulumi.Input.asOptionalInput<String>(multicastGroupRangeId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      requireExplicitAccept = pulumi.Input.asOptionalInput<bool>(requireExplicitAccept),
      reservedInternalRange = pulumi.Input.asOptionalInput<String>(reservedInternalRange),
      states = pulumi.Input.asOptionalInput<List<MulticastGroupRangeState>>(states),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerAcceptLists': ?consumerAcceptLists,
      'createTime': ?createTime,
      'description': ?description,
      'distributionScope': ?distributionScope,
      'effectiveLabels': ?effectiveLabels,
      'ipCidrRange': ?ipCidrRange,
      'labels': ?labels,
      'location': ?location,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<MulticastGroupRangeLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'multicastDomain': ?multicastDomain,
      'multicastGroupRangeId': ?multicastGroupRangeId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'requireExplicitAccept': ?requireExplicitAccept,
      'reservedInternalRange': ?reservedInternalRange,
      'states': ?pulumi.Input.mapOptionalInputValue<List<MulticastGroupRangeState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<MulticastGroupRangeState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory MulticastGroupRangeNetworkservicesState.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeNetworkservicesState(
      consumerAcceptLists: map['consumerAcceptLists'] == null ? null : pulumi.Output.create<List<String>>((map['consumerAcceptLists'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distributionScope: map['distributionScope'] == null ? null : pulumi.Output.create<String>(map['distributionScope'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      ipCidrRange: map['ipCidrRange'] == null ? null : pulumi.Output.create<String>(map['ipCidrRange'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<MulticastGroupRangeLogConfig>(MulticastGroupRangeLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      multicastDomain: map['multicastDomain'] == null ? null : pulumi.Output.create<String>(map['multicastDomain'] as String),
      multicastGroupRangeId: map['multicastGroupRangeId'] == null ? null : pulumi.Output.create<String>(map['multicastGroupRangeId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      requireExplicitAccept: map['requireExplicitAccept'] == null ? null : pulumi.Output.create<bool>(map['requireExplicitAccept'] as bool),
      reservedInternalRange: map['reservedInternalRange'] == null ? null : pulumi.Output.create<String>(map['reservedInternalRange'] as String),
      states: map['states'] == null ? null : pulumi.Output.create<List<MulticastGroupRangeState>>(pulumi.Input.decodeList<MulticastGroupRangeState>(map['states'], (value) => MulticastGroupRangeState.fromMap((value as Map).cast<String, dynamic>()))),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

