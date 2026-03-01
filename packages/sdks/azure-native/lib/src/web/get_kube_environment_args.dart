// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_kube_environment_args_doc}
/// Arguments for getKubeEnvironment.
/// {@endtemplate}
/// {@macro pulumi_web_get_kube_environment_args_doc}
class GetKubeEnvironmentArgs {
  /// Name of the Kubernetes Environment.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKubeEnvironmentArgs].
  /// [name] Name of the Kubernetes Environment.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetKubeEnvironmentArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKubeEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetKubeEnvironmentArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

