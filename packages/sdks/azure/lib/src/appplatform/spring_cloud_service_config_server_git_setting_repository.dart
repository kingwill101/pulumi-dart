// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_service_config_server_git_setting_repository_http_basic_auth.dart';
import 'spring_cloud_service_config_server_git_setting_repository_ssh_auth.dart';

class SpringCloudServiceConfigServerGitSettingRepository {
  /// A `http_basic_auth` block as defined below.
  final pulumi.Input<SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth>? httpBasicAuth;
  /// The default label of the Git repository, should be the branch name, tag name, or commit-id of the repository.
  final pulumi.Input<String>? label;
  /// A name to identify on the Git repository, required only if repos exists.
  final pulumi.Input<String> name;
  /// An array of strings used to match an application name. For each pattern, use the `{application}/{profile}` format with wildcards.
  final pulumi.Input<List<String>>? patterns;
  /// An array of strings used to search subdirectories of the Git repository.
  final pulumi.Input<List<String>>? searchPaths;
  /// A `ssh_auth` block as defined below.
  final pulumi.Input<SpringCloudServiceConfigServerGitSettingRepositorySshAuth>? sshAuth;
  /// The URI of the Git repository that's used as the Config Server back end should be started with `http://`, `https://`, `git@`, or `ssh://`.
  final pulumi.Input<String> uri;

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
      'httpBasicAuth': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth, Map<String, dynamic>>(httpBasicAuth, (value) => value.toMap()),
      'label': ?label,
      'name': name,
      'patterns': ?patterns,
      'searchPaths': ?searchPaths,
      'sshAuth': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceConfigServerGitSettingRepositorySshAuth, Map<String, dynamic>>(sshAuth, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory SpringCloudServiceConfigServerGitSettingRepository.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceConfigServerGitSettingRepository(
      httpBasicAuth: map['httpBasicAuth'] == null ? null : (SpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth.fromMap((map['httpBasicAuth']! as Map).cast<String, dynamic>())).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      name: (map['name'] as String).input(),
      patterns: map['patterns'] == null ? null : ((map['patterns']! as List).cast<String>()).input(),
      searchPaths: map['searchPaths'] == null ? null : ((map['searchPaths']! as List).cast<String>()).input(),
      sshAuth: map['sshAuth'] == null ? null : (SpringCloudServiceConfigServerGitSettingRepositorySshAuth.fromMap((map['sshAuth']! as Map).cast<String, dynamic>())).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

