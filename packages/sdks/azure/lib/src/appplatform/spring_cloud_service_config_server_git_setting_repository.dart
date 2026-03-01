// ignore_for_file: unused_element, unnecessary_cast

import 'spring_cloud_service_config_server_git_setting_repository_http_basic_auth.dart';
import 'spring_cloud_service_config_server_git_setting_repository_ssh_auth.dart';

class SpringCloudServiceConfigServerGitSettingRepository {
  /// A `http_basic_auth` block as defined below.
  final SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth? httpBasicAuth;
  /// The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository.
  final String? label;
  /// A name to identify on the Git repository, required only if repos exists.
  final String name;
  /// An array of strings used to match an application name. For each pattern, use the `{application}/{profile}` format with wildcards.
  final List<String>? patterns;
  /// An array of strings used to search subdirectories of the Git repository.
  final List<String>? searchPaths;
  /// A `ssh_auth` block as defined below.
  final SpringCloudServiceConfigServerGitSettingRepositorySshAuth? sshAuth;
  /// The URI of the Git repository that's used as the Config Server back end should be started with `http://`, `https://`, `git@`, or `ssh://`.
  final String uri;

  /// Creates a new [SpringCloudServiceConfigServerGitSettingRepository].
  /// [httpBasicAuth] A `http_basic_auth` block as defined below.
  /// [label] The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository.
  /// [name] A name to identify on the Git repository, required only if repos exists.
  /// [patterns] An array of strings used to match an application name. For each pattern, use the `{application}/{profile}` format with wildcards.
  /// [searchPaths] An array of strings used to search subdirectories of the Git repository.
  /// [sshAuth] A `ssh_auth` block as defined below.
  /// [uri] The URI of the Git repository that's used as the Config Server back end should be started with `http://`, `https://`, `git@`, or `ssh://`.
  SpringCloudServiceConfigServerGitSettingRepository({
    this.httpBasicAuth,
    this.label,
    required this.name,
    this.patterns,
    this.searchPaths,
    this.sshAuth,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpBasicAuth': ?httpBasicAuth == null ? null : httpBasicAuth!.toMap(),
      'label': ?label,
      'name': name,
      'patterns': ?patterns,
      'searchPaths': ?searchPaths,
      'sshAuth': ?sshAuth == null ? null : sshAuth!.toMap(),
      'uri': uri,
    };
  }

  factory SpringCloudServiceConfigServerGitSettingRepository.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceConfigServerGitSettingRepository(
      httpBasicAuth: map['httpBasicAuth'] == null ? null : SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth.fromMap((map['httpBasicAuth'] as Map).cast<String, dynamic>()),
      label: map['label'] == null ? null : map['label'] as String,
      name: map['name'] as String,
      patterns: map['patterns'] == null ? null : (map['patterns'] as List).cast<String>(),
      searchPaths: map['searchPaths'] == null ? null : (map['searchPaths'] as List).cast<String>(),
      sshAuth: map['sshAuth'] == null ? null : SpringCloudServiceConfigServerGitSettingRepositorySshAuth.fromMap((map['sshAuth'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}

