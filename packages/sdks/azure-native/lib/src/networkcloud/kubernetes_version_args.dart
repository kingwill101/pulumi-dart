// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';

/// {@template pulumi_networkcloud_kubernetes_version_args_doc}
/// The set of arguments for KubernetesVersion.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_kubernetes_version_args_doc}
class KubernetesVersionArgs {
  /// The extended location of the resource. This property is required when creating the resource.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation> extendedLocation;
  /// The name of the Kubernetes version resource.
  final pulumi.Input<String?>? kubernetesVersionName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [KubernetesVersionArgs].
  /// [extendedLocation] The extended location of the resource. This property is required when creating the resource.
  /// [kubernetesVersionName] The name of the Kubernetes version resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const KubernetesVersionArgs({
    required this.extendedLocation,
    this.kubernetesVersionName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'kubernetesVersionName': ?kubernetesVersionName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory KubernetesVersionArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesVersionArgs(
      extendedLocation: pulumi.Input.fromValue(AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      kubernetesVersionName: (() { final guardedValue = map['kubernetesVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
