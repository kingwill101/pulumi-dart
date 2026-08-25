// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_git_remote_settings_ssh_authentication_config.dart';

class RepositoryGitRemoteSettings {
  /// The name of the Secret Manager secret version to use as an authentication token for Git operations. This secret is for assigning with HTTPS only(for SSH use `sshAuthenticationConfig`). Must be in the format projects/*/secrets/*/versions/*.
  final pulumi.Input<String?>? authenticationTokenSecretVersion;
  /// The Git remote's default branch name.
  final pulumi.Input<String> defaultBranch;
  /// The name of the Developer Connect GitRepositoryLink to use for machine credentials. Must be in the format projects/*/locations/*/connections/*/gitRepositoryLinks/*.
  final pulumi.Input<String?>? gitRepositoryLink;
  /// Authentication fields for remote uris using SSH protocol.
  /// Structure is documented below.
  final pulumi.Input<RepositoryGitRemoteSettingsSshAuthenticationConfig?>? sshAuthenticationConfig;
  /// (Output)
  /// Indicates the status of the Git access token. https://cloud.google.com/dataform/reference/rest/v1/projects.locations.repositories#TokenStatus
  final pulumi.Input<String?>? tokenStatus;
  /// The Git remote's URL.
  final pulumi.Input<String> url;

  /// Creates a new [RepositoryGitRemoteSettings].
  /// [authenticationTokenSecretVersion] The name of the Secret Manager secret version to use as an authentication token for Git operations. This secret is for assigning with HTTPS only(for SSH use `sshAuthenticationConfig`). Must be in the format projects/*/secrets/*/versions/*.
  /// [defaultBranch] The Git remote's default branch name.
  /// [gitRepositoryLink] The name of the Developer Connect GitRepositoryLink to use for machine credentials. Must be in the format projects/*/locations/*/connections/*/gitRepositoryLinks/*.
  /// [sshAuthenticationConfig] Authentication fields for remote uris using SSH protocol.
  /// [tokenStatus] (Output)
  /// [url] The Git remote's URL.
  const RepositoryGitRemoteSettings({
    this.authenticationTokenSecretVersion,
    required this.defaultBranch,
    this.gitRepositoryLink,
    this.sshAuthenticationConfig,
    this.tokenStatus,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationTokenSecretVersion': ?authenticationTokenSecretVersion,
      'defaultBranch': defaultBranch,
      'gitRepositoryLink': ?gitRepositoryLink,
      'sshAuthenticationConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryGitRemoteSettingsSshAuthenticationConfig, Map<String, dynamic>>(sshAuthenticationConfig, (value) => value.toMap()),
      'tokenStatus': ?tokenStatus,
      'url': url,
    };
  }

  factory RepositoryGitRemoteSettings.fromMap(Map<String, dynamic> map) {
    return RepositoryGitRemoteSettings(
      authenticationTokenSecretVersion: (() { final guardedValue = map['authenticationTokenSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultBranch: pulumi.Input.fromValue(map['defaultBranch'] as String),
      gitRepositoryLink: (() { final guardedValue = map['gitRepositoryLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshAuthenticationConfig: (() { final guardedValue = map['sshAuthenticationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryGitRemoteSettingsSshAuthenticationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenStatus: (() { final guardedValue = map['tokenStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
