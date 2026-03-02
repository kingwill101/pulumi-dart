// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_authentication_config.dart';

/// Controls Git remote configuration for a repository.
class GitRemoteSettings {
  /// Optional. The name of the Secret Manager secret version to use as an authentication token for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String>? authenticationTokenSecretVersion;
  /// The Git remote's default branch name.
  final pulumi.Input<String> defaultBranch;
  /// Optional. Authentication fields for remote uris using SSH protocol.
  final pulumi.Input<SshAuthenticationConfig>? sshAuthenticationConfig;
  /// The Git remote's URL.
  final pulumi.Input<String> url;

  /// Creates a new [GitRemoteSettings].
  /// [authenticationTokenSecretVersion] Optional. The name of the Secret Manager secret version to use as an authentication token for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  /// [defaultBranch] The Git remote's default branch name.
  /// [sshAuthenticationConfig] Optional. Authentication fields for remote uris using SSH protocol.
  /// [url] The Git remote's URL.
  GitRemoteSettings({
    this.authenticationTokenSecretVersion,
    required this.defaultBranch,
    this.sshAuthenticationConfig,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationTokenSecretVersion': ?authenticationTokenSecretVersion,
      'defaultBranch': defaultBranch,
      'sshAuthenticationConfig': ?pulumi.Input.mapOptionalInputValue<SshAuthenticationConfig, Map<String, dynamic>>(sshAuthenticationConfig, (value) => value.toMap()),
      'url': url,
    };
  }

  factory GitRemoteSettings.fromMap(Map<String, dynamic> map) {
    return GitRemoteSettings(
      authenticationTokenSecretVersion: map['authenticationTokenSecretVersion'] == null ? null : (map['authenticationTokenSecretVersion']! as String).input(),
      defaultBranch: (map['defaultBranch'] as String).input(),
      sshAuthenticationConfig: map['sshAuthenticationConfig'] == null ? null : (SshAuthenticationConfig.fromMap((map['sshAuthenticationConfig']! as Map).cast<String, dynamic>())).input(),
      url: (map['url'] as String).input(),
    );
  }
}

