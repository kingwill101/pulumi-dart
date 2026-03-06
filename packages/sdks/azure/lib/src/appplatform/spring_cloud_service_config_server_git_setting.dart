// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_service_config_server_git_setting_http_basic_auth.dart';
import 'spring_cloud_service_config_server_git_setting_repository.dart';
import 'spring_cloud_service_config_server_git_setting_ssh_auth.dart';

class SpringCloudServiceConfigServerGitSetting {
  /// A `http_basic_auth` block as defined below.
  final pulumi.Input<SpringCloudServiceConfigServerGitSettingHttpBasicAuth>? httpBasicAuth;
  /// The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository.
  final pulumi.Input<String>? label;
  /// One or more `repository` blocks as defined below.
  final pulumi.Input<List<SpringCloudServiceConfigServerGitSettingRepository>>? repositories;
  /// An array of strings used to search subdirectories of the Git repository.
  final pulumi.Input<List<String>>? searchPaths;
  /// A `ssh_auth` block as defined below.
  final pulumi.Input<SpringCloudServiceConfigServerGitSettingSshAuth>? sshAuth;
  /// The URI of the default Git repository used as the Config Server back end, should be started with `http://`, `https://`, `git@`, or `ssh://`.
  final pulumi.Input<String> uri;

  /// Creates a new [SpringCloudServiceConfigServerGitSetting].
  /// [httpBasicAuth] A `http_basic_auth` block as defined below.
  /// [label] The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository.
  /// [repositories] One or more `repository` blocks as defined below.
  /// [searchPaths] An array of strings used to search subdirectories of the Git repository.
  /// [sshAuth] A `ssh_auth` block as defined below.
  /// [uri] The URI of the default Git repository used as the Config Server back end, should be started with `http://`, `https://`, `git@`, or `ssh://`.
  const SpringCloudServiceConfigServerGitSetting({
    this.httpBasicAuth,
    this.label,
    this.repositories,
    this.searchPaths,
    this.sshAuth,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpBasicAuth': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceConfigServerGitSettingHttpBasicAuth, Map<String, dynamic>>(httpBasicAuth, (value) => value.toMap()),
      'label': ?label,
      'repositories': ?pulumi.Input.mapOptionalInputValue<List<SpringCloudServiceConfigServerGitSettingRepository>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<SpringCloudServiceConfigServerGitSettingRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'searchPaths': ?searchPaths,
      'sshAuth': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceConfigServerGitSettingSshAuth, Map<String, dynamic>>(sshAuth, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory SpringCloudServiceConfigServerGitSetting.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceConfigServerGitSetting(
      httpBasicAuth: (() { final guardedValue = map['httpBasicAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudServiceConfigServerGitSettingHttpBasicAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpringCloudServiceConfigServerGitSettingRepository>(guardedValue, (value) => SpringCloudServiceConfigServerGitSettingRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      searchPaths: (() { final guardedValue = map['searchPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sshAuth: (() { final guardedValue = map['sshAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudServiceConfigServerGitSettingSshAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

