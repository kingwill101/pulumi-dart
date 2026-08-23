// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_consumer_association_state.dart';

/// Input properties used for looking up and filtering MulticastConsumerAssociation resources.
class MulticastConsumerAssociationNetworkservicesState {
  /// [Output only] The timestamp when the multicast consumer association was
  /// created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional text description of the multicast consumer association.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const MulticastConsumerAssociationNetworkservicesState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.multicastConsumerAssociationId,
    this.multicastDomainActivation,
    this.name,
    this.network,
    this.placementPolicy,
    this.project,
    this.pulumiLabels,
    this.states,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multicastConsumerAssociationId: (() { final guardedValue = map['multicastConsumerAssociationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multicastDomainActivation: (() { final guardedValue = map['multicastDomainActivation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementPolicy: (() { final guardedValue = map['placementPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MulticastConsumerAssociationState>(guardedValue, (value) => MulticastConsumerAssociationState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
