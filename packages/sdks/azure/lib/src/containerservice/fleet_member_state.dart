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
  const FleetMemberState({
    this.group,
    this.kubernetesClusterId,
    this.kubernetesFleetId,
    this.name,
  });

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
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesClusterId: (() { final guardedValue = map['kubernetesClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesFleetId: (() { final guardedValue = map['kubernetesFleetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
