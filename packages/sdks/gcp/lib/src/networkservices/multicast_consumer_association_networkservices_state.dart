// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_consumer_association_state.dart';

/// Input properties used for looking up and filtering MulticastConsumerAssociation resources.
class MulticastConsumerAssociationNetworkservicesState {
  /// [Output only] The timestamp when the multicast consumer association was
  /// created.
  final pulumi.Input<String>? createTime;
  /// An optional text description of the multicast consumer association.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// A unique name for the multicast consumer association.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String>? multicastConsumerAssociationId;
  /// The resource name of the multicast domain activation that is in the
  /// same zone as this multicast consumer association.
  /// Use the following format:
  /// // `projects/*/locations/*/multicastDomainActivations/*`.
  final pulumi.Input<String>? multicastDomainActivation;
  /// Identifier. The resource name of the multicast consumer association.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  final pulumi.Input<String>? name;
  /// The resource name of the multicast consumer VPC network.
  /// Use following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  final pulumi.Input<String>? network;
  /// [Output only] A Compute Engine (placement
  /// policy)[https://cloud.google.com/compute/docs/instances/placement-policies-overview]
  /// that can be used to place virtual machine (VM) instances as multicast
  /// consumers close to the multicast infrastructure created for this domain,
  /// on a best effort basis.
  final pulumi.Input<String>? placementPolicy;
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
  final pulumi.Input<List<MulticastConsumerAssociationState>>? states;
  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast consumer association resources. If a consumer
  /// association is deleted and another with the same name is created, the new
  /// consumer association is assigned a different unique_id.
  final pulumi.Input<String>? uniqueId;
  /// [Output only] The timestamp when the Multicast Consumer Association was
  /// most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MulticastConsumerAssociationNetworkservicesState].
  /// [createTime] [Output only] The timestamp when the multicast consumer association was
  /// [description] An optional text description of the multicast consumer association.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastConsumerAssociationId] A unique name for the multicast consumer association.
  /// [multicastDomainActivation] The resource name of the multicast domain activation that is in the
  /// [name] Identifier. The resource name of the multicast consumer association.
  /// [network] The resource name of the multicast consumer VPC network.
  /// [placementPolicy] [Output only] A Compute Engine (placement
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [states] (Output)
  /// [uniqueId] [Output only] The Google-generated UUID for the resource. This value is
  /// [updateTime] [Output only] The timestamp when the Multicast Consumer Association was
  MulticastConsumerAssociationNetworkservicesState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? multicastConsumerAssociationId,
    pulumi.Output<String>? multicastDomainActivation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? placementPolicy,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<MulticastConsumerAssociationState>>? states,
    pulumi.Output<String>? uniqueId,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      multicastConsumerAssociationId = pulumi.Input.asOptionalInput<String>(multicastConsumerAssociationId),
      multicastDomainActivation = pulumi.Input.asOptionalInput<String>(multicastDomainActivation),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      placementPolicy = pulumi.Input.asOptionalInput<String>(placementPolicy),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      states = pulumi.Input.asOptionalInput<List<MulticastConsumerAssociationState>>(states),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'multicastConsumerAssociationId': ?multicastConsumerAssociationId,
      'multicastDomainActivation': ?multicastDomainActivation,
      'name': ?name,
      'network': ?network,
      'placementPolicy': ?placementPolicy,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'states': ?pulumi.Input.mapOptionalInputValue<List<MulticastConsumerAssociationState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<MulticastConsumerAssociationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory MulticastConsumerAssociationNetworkservicesState.fromMap(Map<String, dynamic> map) {
    return MulticastConsumerAssociationNetworkservicesState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      multicastConsumerAssociationId: map['multicastConsumerAssociationId'] == null ? null : pulumi.Output.create<String>(map['multicastConsumerAssociationId'] as String),
      multicastDomainActivation: map['multicastDomainActivation'] == null ? null : pulumi.Output.create<String>(map['multicastDomainActivation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      placementPolicy: map['placementPolicy'] == null ? null : pulumi.Output.create<String>(map['placementPolicy'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      states: map['states'] == null ? null : pulumi.Output.create<List<MulticastConsumerAssociationState>>(pulumi.Input.decodeList<MulticastConsumerAssociationState>(map['states'], (value) => MulticastConsumerAssociationState.fromMap((value as Map).cast<String, dynamic>()))),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

