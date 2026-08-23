// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_kubernetes_version_args_doc}
/// Arguments for getKubernetesVersion.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_kubernetes_version_args_doc}
class GetKubernetesVersionArgs {
  /// The name of the Kubernetes version resource.
  final pulumi.Input<String> kubernetesVersionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKubernetesVersionArgs].
  /// [kubernetesVersionName] The name of the Kubernetes version resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetKubernetesVersionArgs({
    required this.kubernetesVersionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesVersionName': kubernetesVersionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKubernetesVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionArgs(
      kubernetesVersionName: pulumi.Input.fromValue(map['kubernetesVersionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
