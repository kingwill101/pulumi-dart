// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_fleet_manager_hub_profile.dart';

/// Input properties used for looking up and filtering KubernetesFleetManager resources.
class KubernetesFleetManagerState {
  final pulumi.Input<KubernetesFleetManagerHubProfile>? hubProfile;

  /// The Azure Region where the Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of this Kubernetes Fleet Manager. Changing this forces a new Kubernetes Fleet Manager to be created.
  final pulumi.Input<String>? name;

  /// Specifies the name of the Resource Group within which this Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// A mapping of tags which should be assigned to the Kubernetes Fleet Manager.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KubernetesFleetManagerState].
  /// [hubProfile] Optional.
  /// [location] The Azure Region where the Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
  /// [name] Specifies the name of this Kubernetes Fleet Manager. Changing this forces a new Kubernetes Fleet Manager to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Kubernetes Fleet Manager should exist. Changing this forces a new Kubernetes Fleet Manager to be created.
  /// [tags] A mapping of tags which should be assigned to the Kubernetes Fleet Manager.
  KubernetesFleetManagerState({
    this.hubProfile,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubProfile':
          ?pulumi.Input.mapOptionalInputValue<
            KubernetesFleetManagerHubProfile,
            Map<String, dynamic>
          >(hubProfile, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory KubernetesFleetManagerState.fromMap(Map<String, dynamic> map) {
    return KubernetesFleetManagerState(
      hubProfile: (() {
        final guardedValue = map['hubProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubernetesFleetManagerHubProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
