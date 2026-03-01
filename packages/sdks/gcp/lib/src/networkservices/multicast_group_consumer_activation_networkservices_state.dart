// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_consumer_activation_log_config.dart';
import 'multicast_group_consumer_activation_state.dart';

/// Input properties used for looking up and filtering MulticastGroupConsumerActivation resources.
class MulticastGroupConsumerActivationNetworkservicesState {
  /// The timestamp when the multicast group consumer activation
  /// was created.
  final pulumi.Input<String>? createTime;
  /// An optional text description of the multicast group consumer activation.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The logging configuration.
  /// Structure is documented below.
  final pulumi.Input<MulticastGroupConsumerActivationLogConfig>? logConfig;
  /// The resource name of the multicast consumer association that is in the
  /// same zone as this multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  final pulumi.Input<String>? multicastConsumerAssociation;
  /// A unique name for the multicast group consumer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String>? multicastGroupConsumerActivationId;
  /// The resource name of the multicast group range activation created by the
  /// admin in the same zone as this multicast group consumer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final pulumi.Input<String>? multicastGroupRangeActivation;
  /// Identifier. The resource name of the multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupConsumerActivations/*`.
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
  final pulumi.Input<List<MulticastGroupConsumerActivationState>>? states;
  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast group consumer activation resources. If a group
  /// consumer activation is deleted and another with the same name is created,
  /// the new group consumer activation is assigned a different unique_id.
  final pulumi.Input<String>? uniqueId;
  /// The timestamp when the multicast group consumer activation
  /// was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MulticastGroupConsumerActivationNetworkservicesState].
  /// [createTime] The timestamp when the multicast group consumer activation
  /// [description] An optional text description of the multicast group consumer activation.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logConfig] The logging configuration.
  /// [multicastConsumerAssociation] The resource name of the multicast consumer association that is in the
  /// [multicastGroupConsumerActivationId] A unique name for the multicast group consumer activation.
  /// [multicastGroupRangeActivation] The resource name of the multicast group range activation created by the
  /// [name] Identifier. The resource name of the multicast group consumer activation.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [states] (Output)
  /// [uniqueId] The Google-generated UUID for the resource. This value is
  /// [updateTime] The timestamp when the multicast group consumer activation
  MulticastGroupConsumerActivationNetworkservicesState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MulticastGroupConsumerActivationLogConfig>? logConfig,
    pulumi.Output<String>? multicastConsumerAssociation,
    pulumi.Output<String>? multicastGroupConsumerActivationId,
    pulumi.Output<String>? multicastGroupRangeActivation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<MulticastGroupConsumerActivationState>>? states,
    pulumi.Output<String>? uniqueId,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      logConfig = pulumi.Input.asOptionalInput<MulticastGroupConsumerActivationLogConfig>(logConfig),
      multicastConsumerAssociation = pulumi.Input.asOptionalInput<String>(multicastConsumerAssociation),
      multicastGroupConsumerActivationId = pulumi.Input.asOptionalInput<String>(multicastGroupConsumerActivationId),
      multicastGroupRangeActivation = pulumi.Input.asOptionalInput<String>(multicastGroupRangeActivation),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      states = pulumi.Input.asOptionalInput<List<MulticastGroupConsumerActivationState>>(states),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<MulticastGroupConsumerActivationLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'multicastConsumerAssociation': ?multicastConsumerAssociation,
      'multicastGroupConsumerActivationId': ?multicastGroupConsumerActivationId,
      'multicastGroupRangeActivation': ?multicastGroupRangeActivation,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'states': ?pulumi.Input.mapOptionalInputValue<List<MulticastGroupConsumerActivationState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<MulticastGroupConsumerActivationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory MulticastGroupConsumerActivationNetworkservicesState.fromMap(Map<String, dynamic> map) {
    return MulticastGroupConsumerActivationNetworkservicesState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<MulticastGroupConsumerActivationLogConfig>(MulticastGroupConsumerActivationLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      multicastConsumerAssociation: map['multicastConsumerAssociation'] == null ? null : pulumi.Output.create<String>(map['multicastConsumerAssociation'] as String),
      multicastGroupConsumerActivationId: map['multicastGroupConsumerActivationId'] == null ? null : pulumi.Output.create<String>(map['multicastGroupConsumerActivationId'] as String),
      multicastGroupRangeActivation: map['multicastGroupRangeActivation'] == null ? null : pulumi.Output.create<String>(map['multicastGroupRangeActivation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      states: map['states'] == null ? null : pulumi.Output.create<List<MulticastGroupConsumerActivationState>>(pulumi.Input.decodeList<MulticastGroupConsumerActivationState>(map['states'], (value) => MulticastGroupConsumerActivationState.fromMap((value as Map).cast<String, dynamic>()))),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

