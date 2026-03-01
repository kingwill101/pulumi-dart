// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FleetMember resources.
class FleetMemberState {
  /// The group this member belongs to for multi-cluster update management.
  final pulumi.Input<String>? group;
  /// The ARM resource ID of the cluster that joins the Fleet. Changing this forces a new Kubernetes Fleet Member to be created.
  final pulumi.Input<String>? kubernetesClusterId;
  /// Specifies the Kubernetes Fleet Id within which this Kubernetes Fleet Member should exist. Changing this forces a new Kubernetes Fleet Member to be created.
  final pulumi.Input<String>? kubernetesFleetId;
  /// Specifies the name of this Kubernetes Fleet Member. Changing this forces a new Kubernetes Fleet Member to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [FleetMemberState].
  /// [group] The group this member belongs to for multi-cluster update management.
  /// [kubernetesClusterId] The ARM resource ID of the cluster that joins the Fleet. Changing this forces a new Kubernetes Fleet Member to be created.
  /// [kubernetesFleetId] Specifies the Kubernetes Fleet Id within which this Kubernetes Fleet Member should exist. Changing this forces a new Kubernetes Fleet Member to be created.
  /// [name] Specifies the name of this Kubernetes Fleet Member. Changing this forces a new Kubernetes Fleet Member to be created.
  FleetMemberState({
    pulumi.Output<String>? group,
    pulumi.Output<String>? kubernetesClusterId,
    pulumi.Output<String>? kubernetesFleetId,
    pulumi.Output<String>? name,
  }) :
      group = pulumi.Input.asOptionalInput<String>(group),
      kubernetesClusterId = pulumi.Input.asOptionalInput<String>(kubernetesClusterId),
      kubernetesFleetId = pulumi.Input.asOptionalInput<String>(kubernetesFleetId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'kubernetesClusterId': ?kubernetesClusterId,
      'kubernetesFleetId': ?kubernetesFleetId,
      'name': ?name,
    };
  }

  factory FleetMemberState.fromMap(Map<String, dynamic> map) {
    return FleetMemberState(
      group: map['group'] == null ? null : pulumi.Output.create<String>(map['group'] as String),
      kubernetesClusterId: map['kubernetesClusterId'] == null ? null : pulumi.Output.create<String>(map['kubernetesClusterId'] as String),
      kubernetesFleetId: map['kubernetesFleetId'] == null ? null : pulumi.Output.create<String>(map['kubernetesFleetId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

