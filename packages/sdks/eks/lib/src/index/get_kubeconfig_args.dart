// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster.dart';

/// {@template pulumi_index_get_kubeconfig_args_doc}
/// Arguments for getKubeconfig.
/// {@endtemplate}
/// {@macro pulumi_index_get_kubeconfig_args_doc}
class GetKubeconfigArgs {
  final pulumi.Input<Cluster> self;
  /// AWS credential profile name to always use instead of the default AWS credential provider chain.
  ///
  /// The profile is passed to kubeconfig as an authentication environment setting.
  final pulumi.Input<String>? profileName;
  /// Role ARN to assume instead of the default AWS credential provider chain.
  ///
  /// The role is passed to kubeconfig as an authentication exec argument.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [GetKubeconfigArgs].
  /// [self] Required.
  /// [profileName] AWS credential profile name to always use instead of the default AWS credential provider chain.
  /// [roleArn] Role ARN to assume instead of the default AWS credential provider chain.
  GetKubeconfigArgs({
    required this.self,
    this.profileName,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
      'profileName': ?profileName,
      'roleArn': ?roleArn,
    };
  }

  factory GetKubeconfigArgs.fromMap(Map<String, dynamic> map) {
    return GetKubeconfigArgs(
      self: (map['__self__'] as Cluster).input(),
      profileName: map['profileName'] == null ? null : (map['profileName']! as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
    );
  }
}

