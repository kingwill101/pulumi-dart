// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spring_cloud_service_config_server_git_setting_repository_http_basic_auth.dart';
import 'get_spring_cloud_service_config_server_git_setting_repository_ssh_auth.dart';

class GetSpringCloudServiceConfigServerGitSettingRepository {
  /// A `http_basic_auth` block as defined below.
  final List<GetSpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth> httpBasicAuths;
  /// The default label of the Git repository, which is a branch name, tag name, or commit-id of the repository
  final String label;
  /// Specifies The name of the Spring Cloud Service resource.
  final String name;
  /// An array of strings used to match an application name. For each pattern, use the `{application}/{profile}` format with wildcards.
  final List<String> patterns;
  /// An array of strings used to search subdirectories of the Git repository.
  final List<String> searchPaths;
  /// A `ssh_auth` block as defined below.
  final List<GetSpringCloudServiceConfigServerGitSettingRepositorySshAuth> sshAuths;
  /// The URI of the Git repository
  final String uri;

  /// Creates a new [GetSpringCloudServiceConfigServerGitSettingRepository].
  /// [httpBasicAuths] A `http_basic_auth` block as defined below.
  /// [label] The default label of the Git repository, which is a branch name, tag name, or commit-id of the repository
  /// [name] Specifies The name of the Spring Cloud Service resource.
  /// [patterns] An array of strings used to match an application name. For each pattern, use the `{application}/{profile}` format with wildcards.
  /// [searchPaths] An array of strings used to search subdirectories of the Git repository.
  /// [sshAuths] A `ssh_auth` block as defined below.
  /// [uri] The URI of the Git repository
  GetSpringCloudServiceConfigServerGitSettingRepository({
    required this.httpBasicAuths,
    required this.label,
    required this.name,
    required this.patterns,
    required this.searchPaths,
    required this.sshAuths,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpBasicAuths': pulumi.Input.encodeList<GetSpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth, Map<String, dynamic>>(httpBasicAuths, (value) => value.toMap()),
      'label': label,
      'name': name,
      'patterns': patterns,
      'searchPaths': searchPaths,
      'sshAuths': pulumi.Input.encodeList<GetSpringCloudServiceConfigServerGitSettingRepositorySshAuth, Map<String, dynamic>>(sshAuths, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory GetSpringCloudServiceConfigServerGitSettingRepository.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceConfigServerGitSettingRepository(
      httpBasicAuths: pulumi.Input.decodeList<GetSpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth>(map['httpBasicAuths'], (value) => GetSpringCloudServiceConfigServerGitSettingRepositoryHttpBasicAuth.fromMap((value as Map).cast<String, dynamic>())),
      label: map['label'] as String,
      name: map['name'] as String,
      patterns: (map['patterns'] as List).cast<String>(),
      searchPaths: (map['searchPaths'] as List).cast<String>(),
      sshAuths: pulumi.Input.decodeList<GetSpringCloudServiceConfigServerGitSettingRepositorySshAuth>(map['sshAuths'], (value) => GetSpringCloudServiceConfigServerGitSettingRepositorySshAuth.fromMap((value as Map).cast<String, dynamic>())),
      uri: map['uri'] as String,
    );
  }
}

