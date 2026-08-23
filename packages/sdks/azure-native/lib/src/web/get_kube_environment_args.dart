// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_kube_environment_args_doc}
/// Arguments for getKubeEnvironment.
/// {@endtemplate}
/// {@macro pulumi_web_get_kube_environment_args_doc}
class GetKubeEnvironmentArgs {
  /// Name of the Kubernetes Environment.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKubeEnvironmentArgs].
  /// [name] Name of the Kubernetes Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetKubeEnvironmentArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKubeEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetKubeEnvironmentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
