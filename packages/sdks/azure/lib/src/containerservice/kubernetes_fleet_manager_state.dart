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
    pulumi.Output<KubernetesFleetManagerHubProfile>? hubProfile,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      hubProfile = pulumi.Input.asOptionalInput<KubernetesFleetManagerHubProfile>(hubProfile),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubProfile': ?pulumi.Input.mapOptionalInputValue<KubernetesFleetManagerHubProfile, Map<String, dynamic>>(hubProfile, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory KubernetesFleetManagerState.fromMap(Map<String, dynamic> map) {
    return KubernetesFleetManagerState(
      hubProfile: map['hubProfile'] == null ? null : pulumi.Output.create<KubernetesFleetManagerHubProfile>(KubernetesFleetManagerHubProfile.fromMap((map['hubProfile'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

