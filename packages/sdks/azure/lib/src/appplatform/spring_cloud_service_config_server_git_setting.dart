// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_service_config_server_git_setting_http_basic_auth.dart';
import 'spring_cloud_service_config_server_git_setting_repository.dart';
import 'spring_cloud_service_config_server_git_setting_ssh_auth.dart';

class SpringCloudServiceConfigServerGitSetting {
  /// A `http_basic_auth` block as defined below.
  final SpringCloudServiceConfigServerGitSettingHttpBasicAuth? httpBasicAuth;
  /// The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository.
  final String? label;
  /// One or more `repository` blocks as defined below.
  final List<SpringCloudServiceConfigServerGitSettingRepository>? repositories;
  /// An array of strings used to search subdirectories of the Git repository.
  final List<String>? searchPaths;
  /// A `ssh_auth` block as defined below.
  final SpringCloudServiceConfigServerGitSettingSshAuth? sshAuth;
  /// The URI of the default Git repository used as the Config Server back end, should be started with `http://`, `https://`, `git@`, or `ssh://`.
  final String uri;

  /// Creates a new [SpringCloudServiceConfigServerGitSetting].
  /// [httpBasicAuth] A `http_basic_auth` block as defined below.
  /// [label] The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository.
  /// [repositories] One or more `repository` blocks as defined below.
  /// [searchPaths] An array of strings used to search subdirectories of the Git repository.
  /// [sshAuth] A `ssh_auth` block as defined below.
  /// [uri] The URI of the default Git repository used as the Config Server back end, should be started with `http://`, `https://`, `git@`, or `ssh://`.
  SpringCloudServiceConfigServerGitSetting({
    this.httpBasicAuth,
    this.label,
    this.repositories,
    this.searchPaths,
    this.sshAuth,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpBasicAuth': ?httpBasicAuth == null ? null : httpBasicAuth!.toMap(),
      'label': ?label,
      'repositories': ?repositories == null ? null : pulumi.Input.encodeList<SpringCloudServiceConfigServerGitSettingRepository, Map<String, dynamic>>(repositories!, (value) => value.toMap()),
      'searchPaths': ?searchPaths,
      'sshAuth': ?sshAuth == null ? null : sshAuth!.toMap(),
      'uri': uri,
    };
  }

  factory SpringCloudServiceConfigServerGitSetting.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceConfigServerGitSetting(
      httpBasicAuth: map['httpBasicAuth'] == null ? null : SpringCloudServiceConfigServerGitSettingHttpBasicAuth.fromMap((map['httpBasicAuth'] as Map).cast<String, dynamic>()),
      label: map['label'] == null ? null : map['label'] as String,
      repositories: map['repositories'] == null ? null : pulumi.Input.decodeList<SpringCloudServiceConfigServerGitSettingRepository>(map['repositories'], (value) => SpringCloudServiceConfigServerGitSettingRepository.fromMap((value as Map).cast<String, dynamic>())),
      searchPaths: map['searchPaths'] == null ? null : (map['searchPaths'] as List).cast<String>(),
      sshAuth: map['sshAuth'] == null ? null : SpringCloudServiceConfigServerGitSettingSshAuth.fromMap((map['sshAuth'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}

