// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_range_activation_log_config.dart';
import 'multicast_group_range_activation_state.dart';

/// Input properties used for looking up and filtering MulticastGroupRangeActivation resources.
class MulticastGroupRangeActivationNetworkservicesState {
  /// [Output only] The timestamp when the multicast group range activation was
  /// created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional text description of the multicast group range activation.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// [Output only] The multicast group IP address range.
  final pulumi.Input<String>? ipCidrRange;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const MulticastGroupRangeActivationNetworkservicesState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.ipCidrRange,
    this.labels,
    this.location,
    this.logConfig,
    this.multicastDomainActivation,
    this.multicastGroupConsumerActivations,
    this.multicastGroupRange,
    this.multicastGroupRangeActivationId,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MulticastGroupRangeActivationLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multicastDomainActivation: (() { final guardedValue = map['multicastDomainActivation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multicastGroupConsumerActivations: (() { final guardedValue = map['multicastGroupConsumerActivations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      multicastGroupRange: (() { final guardedValue = map['multicastGroupRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multicastGroupRangeActivationId: (() { final guardedValue = map['multicastGroupRangeActivationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MulticastGroupRangeActivationState>(guardedValue, (value) => MulticastGroupRangeActivationState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
