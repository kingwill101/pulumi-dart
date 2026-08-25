// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_producer_activation_state.dart';

/// Input properties used for looking up and filtering MulticastGroupProducerActivation resources.
class MulticastGroupProducerActivationNetworkservicesState {
  /// The timestamp when the multicast group producer activation was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional text description of the multicast group producer activation.
  final pulumi.Input<String?>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// A unique name for the multicast group producer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String?>? multicastGroupProducerActivationId;
  /// The resource name of the multicast group range activationcreated by the
  /// admin in the same zone as this multicast group producer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final pulumi.Input<String?>? multicastGroupRangeActivation;
  /// The resource name of the multicast producer association that is in the
  /// same zone as this multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastProducerAssociations/*`.
  final pulumi.Input<String?>? multicastProducerAssociation;
  /// Identifier. The resource name of the multicast group producer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupProducerActivations/*`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
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
  final pulumi.Input<List<MulticastGroupProducerActivationState>?>? states;
  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast group producer activation resources. If a group
  /// producer activation is deleted and another with the same name is created,
  /// the new group producer activation is assigned a different unique_id.
  final pulumi.Input<String?>? uniqueId;
  /// The timestamp when the multicast group producer activation
  /// was most recently updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [MulticastGroupProducerActivationNetworkservicesState].
  /// [createTime] The timestamp when the multicast group producer activation was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const MulticastGroupProducerActivationNetworkservicesState({
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multicastGroupProducerActivationId: (() { final guardedValue = map['multicastGroupProducerActivationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multicastGroupRangeActivation: (() { final guardedValue = map['multicastGroupRangeActivation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multicastProducerAssociation: (() { final guardedValue = map['multicastProducerAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MulticastGroupProducerActivationState>(guardedValue, (value) => MulticastGroupProducerActivationState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
