// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_range_activation_log_config.dart';
import 'multicast_group_range_activation_state.dart';

/// Input properties used for looking up and filtering MulticastGroupRangeActivation resources.
class MulticastGroupRangeActivationNetworkservicesState {
  /// [Output only] The timestamp when the multicast group range activation was
  /// created.
  final pulumi.Input<String>? createTime;
  /// An optional text description of the multicast group range activation.
  final pulumi.Input<String>? description;
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
  final pulumi.Input<MulticastGroupRangeActivationLogConfig>? logConfig;
  /// The resource name of a multicast domain activation that is in the
  /// same zone as this multicast group.
  /// Use the following format:
  /// `projects/*/locations/*/multicastDomainActivations/*`
  final pulumi.Input<String>? multicastDomainActivation;
  /// The resource names of associated multicast group consumer activations.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupConsumerActivations/*`.
  final pulumi.Input<List<String>>? multicastGroupConsumerActivations;
  /// The resource name of the global multicast group range for the
  /// group. Use the following format:
  /// `projects/*/locations/global/multicastGroupRanges/*`
  final pulumi.Input<String>? multicastGroupRange;
  /// A unique name for the multicast group range activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String>? multicastGroupRangeActivationId;
  /// Identifier. The resource name of the multicast group range activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
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
  final pulumi.Input<List<MulticastGroupRangeActivationState>>? states;
  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast group resources. If a group is deleted and
  /// another with the same name is created, the new group is assigned a
  /// different unique_id.
  final pulumi.Input<String>? uniqueId;
  /// [Output only] The timestamp when the multicast group range activation was
  /// most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MulticastGroupRangeActivationNetworkservicesState].
  /// [createTime] [Output only] The timestamp when the multicast group range activation was
  /// [description] An optional text description of the multicast group range activation.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ipCidrRange] [Output only] The multicast group IP address range.
  /// [labels] Labels as key-value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logConfig] The logging configuration.
  /// [multicastDomainActivation] The resource name of a multicast domain activation that is in the
  /// [multicastGroupConsumerActivations] The resource names of associated multicast group consumer activations.
  /// [multicastGroupRange] The resource name of the global multicast group range for the
  /// [multicastGroupRangeActivationId] A unique name for the multicast group range activation.
  /// [name] Identifier. The resource name of the multicast group range activation.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [states] (Output)
  /// [uniqueId] [Output only] The Google-generated UUID for the resource. This value is
  /// [updateTime] [Output only] The timestamp when the multicast group range activation was
  MulticastGroupRangeActivationNetworkservicesState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? ipCidrRange,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MulticastGroupRangeActivationLogConfig>? logConfig,
    pulumi.Output<String>? multicastDomainActivation,
    pulumi.Output<List<String>>? multicastGroupConsumerActivations,
    pulumi.Output<String>? multicastGroupRange,
    pulumi.Output<String>? multicastGroupRangeActivationId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<MulticastGroupRangeActivationState>>? states,
    pulumi.Output<String>? uniqueId,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      ipCidrRange = pulumi.Input.asOptionalInput<String>(ipCidrRange),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      logConfig = pulumi.Input.asOptionalInput<MulticastGroupRangeActivationLogConfig>(logConfig),
      multicastDomainActivation = pulumi.Input.asOptionalInput<String>(multicastDomainActivation),
      multicastGroupConsumerActivations = pulumi.Input.asOptionalInput<List<String>>(multicastGroupConsumerActivations),
      multicastGroupRange = pulumi.Input.asOptionalInput<String>(multicastGroupRange),
      multicastGroupRangeActivationId = pulumi.Input.asOptionalInput<String>(multicastGroupRangeActivationId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      states = pulumi.Input.asOptionalInput<List<MulticastGroupRangeActivationState>>(states),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'ipCidrRange': ?ipCidrRange,
      'labels': ?labels,
      'location': ?location,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<MulticastGroupRangeActivationLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'multicastDomainActivation': ?multicastDomainActivation,
      'multicastGroupConsumerActivations': ?multicastGroupConsumerActivations,
      'multicastGroupRange': ?multicastGroupRange,
      'multicastGroupRangeActivationId': ?multicastGroupRangeActivationId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'states': ?pulumi.Input.mapOptionalInputValue<List<MulticastGroupRangeActivationState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<MulticastGroupRangeActivationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory MulticastGroupRangeActivationNetworkservicesState.fromMap(Map<String, dynamic> map) {
    return MulticastGroupRangeActivationNetworkservicesState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      ipCidrRange: map['ipCidrRange'] == null ? null : pulumi.Output.create<String>(map['ipCidrRange'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<MulticastGroupRangeActivationLogConfig>(MulticastGroupRangeActivationLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      multicastDomainActivation: map['multicastDomainActivation'] == null ? null : pulumi.Output.create<String>(map['multicastDomainActivation'] as String),
      multicastGroupConsumerActivations: map['multicastGroupConsumerActivations'] == null ? null : pulumi.Output.create<List<String>>((map['multicastGroupConsumerActivations'] as List).cast<String>()),
      multicastGroupRange: map['multicastGroupRange'] == null ? null : pulumi.Output.create<String>(map['multicastGroupRange'] as String),
      multicastGroupRangeActivationId: map['multicastGroupRangeActivationId'] == null ? null : pulumi.Output.create<String>(map['multicastGroupRangeActivationId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      states: map['states'] == null ? null : pulumi.Output.create<List<MulticastGroupRangeActivationState>>(pulumi.Input.decodeList<MulticastGroupRangeActivationState>(map['states'], (value) => MulticastGroupRangeActivationState.fromMap((value as Map).cast<String, dynamic>()))),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

