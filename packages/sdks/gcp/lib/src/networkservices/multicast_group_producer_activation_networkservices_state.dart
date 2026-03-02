// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_producer_activation_state.dart';

/// Input properties used for looking up and filtering MulticastGroupProducerActivation resources.
class MulticastGroupProducerActivationNetworkservicesState {
  /// The timestamp when the multicast group producer activation was created.
  final pulumi.Input<String>? createTime;
  /// An optional text description of the multicast group producer activation.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// A unique name for the multicast group producer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String>? multicastGroupProducerActivationId;
  /// The resource name of the multicast group range activationcreated by the
  /// admin in the same zone as this multicast group producer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final pulumi.Input<String>? multicastGroupRangeActivation;
  /// The resource name of the multicast producer association that is in the
  /// same zone as this multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastProducerAssociations/*`.
  final pulumi.Input<String>? multicastProducerAssociation;
  /// Identifier. The resource name of the multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupProducerActivations/*`.
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
  final pulumi.Input<List<MulticastGroupProducerActivationState>>? states;
  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast group producer activation resources. If a group
  /// producer activation is deleted and another with the same name is created,
  /// the new group producer activation is assigned a different unique_id.
  final pulumi.Input<String>? uniqueId;
  /// The timestamp when the multicast group producer activation
  /// was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MulticastGroupProducerActivationNetworkservicesState].
  /// [createTime] The timestamp when the multicast group producer activation was created.
  /// [description] An optional text description of the multicast group producer activation.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastGroupProducerActivationId] A unique name for the multicast group producer activation.
  /// [multicastGroupRangeActivation] The resource name of the multicast group range activationcreated by the
  /// [multicastProducerAssociation] The resource name of the multicast producer association that is in the
  /// [name] Identifier. The resource name of the multicast group producer activation.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [states] (Output)
  /// [uniqueId] The Google-generated UUID for the resource. This value is
  /// [updateTime] The timestamp when the multicast group producer activation
  MulticastGroupProducerActivationNetworkservicesState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.multicastGroupProducerActivationId,
    this.multicastGroupRangeActivation,
    this.multicastProducerAssociation,
    this.name,
    this.project,
    this.pulumiLabels,
    this.states,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'multicastGroupProducerActivationId': ?multicastGroupProducerActivationId,
      'multicastGroupRangeActivation': ?multicastGroupRangeActivation,
      'multicastProducerAssociation': ?multicastProducerAssociation,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'states': ?pulumi.Input.mapOptionalInputValue<List<MulticastGroupProducerActivationState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<MulticastGroupProducerActivationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory MulticastGroupProducerActivationNetworkservicesState.fromMap(Map<String, dynamic> map) {
    return MulticastGroupProducerActivationNetworkservicesState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      multicastGroupProducerActivationId: map['multicastGroupProducerActivationId'] == null ? null : (map['multicastGroupProducerActivationId'] as String).input(),
      multicastGroupRangeActivation: map['multicastGroupRangeActivation'] == null ? null : (map['multicastGroupRangeActivation'] as String).input(),
      multicastProducerAssociation: map['multicastProducerAssociation'] == null ? null : (map['multicastProducerAssociation'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      states: map['states'] == null ? null : (pulumi.Input.decodeList<MulticastGroupProducerActivationState>(map['states'], (value) => MulticastGroupProducerActivationState.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uniqueId: map['uniqueId'] == null ? null : (map['uniqueId'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

