// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the AWS credentials to scope a given kubeconfig when using a non-default credential chain.
///
/// The options can be used independently, or additively.
///
/// A scoped kubeconfig is necessary for certain auth scenarios. For example:
/// 1. Assume a role on the default account caller,
/// 2. Use an AWS creds profile instead of the default account caller,
/// 3. Use an AWS creds creds profile instead of the default account caller,
/// and then assume a given role on the profile. This scenario is also
/// possible by only using a profile, iff the profile includes a role to
/// assume in its settings.
///
/// See for more details:
/// - https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html
/// - https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-role.html
/// - https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
class KubeconfigOptions {
  /// AWS credential profile name to always use instead of the default AWS credential provider chain.
  ///
  /// The profile is passed to kubeconfig as an authentication environment setting.
  final pulumi.Input<String>? profileName;
  /// Role ARN to assume instead of the default AWS credential provider chain.
  ///
  /// The role is passed to kubeconfig as an authentication exec argument.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [KubeconfigOptions].
  /// [profileName] AWS credential profile name to always use instead of the default AWS credential provider chain.
  /// [roleArn] Role ARN to assume instead of the default AWS credential provider chain.
  KubeconfigOptions({
    this.profileName,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': ?profileName,
      'roleArn': ?roleArn,
    };
  }

  factory KubeconfigOptions.fromMap(Map<String, dynamic> map) {
    return KubeconfigOptions(
      profileName: map['profileName'] == null ? null : (map['profileName'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
    );
  }
}

