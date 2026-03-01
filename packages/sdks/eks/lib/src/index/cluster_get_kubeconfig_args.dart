// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_cluster_get_kubeconfig_args_doc}
/// Arguments for Cluster.getKubeconfig.
/// {@endtemplate}
/// {@macro pulumi_index_cluster_get_kubeconfig_args_doc}
class ClusterGetKubeconfigArgs {
  /// AWS credential profile name to always use instead of the default AWS credential provider chain.
  ///
  /// The profile is passed to kubeconfig as an authentication environment setting.
  final pulumi.Input<String>? profileName;
  /// Role ARN to assume instead of the default AWS credential provider chain.
  ///
  /// The role is passed to kubeconfig as an authentication exec argument.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [ClusterGetKubeconfigArgs].
  /// [profileName] AWS credential profile name to always use instead of the default AWS credential provider chain.
  /// [roleArn] Role ARN to assume instead of the default AWS credential provider chain.
  ClusterGetKubeconfigArgs({
    pulumi.Output<String>? profileName,
    pulumi.Output<String>? roleArn,
  }) :
      profileName = pulumi.Input.asOptionalInput<String>(profileName),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': ?profileName,
      'roleArn': ?roleArn,
    };
  }

  factory ClusterGetKubeconfigArgs.fromMap(Map<String, dynamic> map) {
    return ClusterGetKubeconfigArgs(
      profileName: map['profileName'] == null ? null : pulumi.Output.create<String>(map['profileName'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
    );
  }
}

