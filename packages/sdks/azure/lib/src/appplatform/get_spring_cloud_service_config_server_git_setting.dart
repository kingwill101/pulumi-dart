// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spring_cloud_service_config_server_git_setting_http_basic_auth.dart';
import 'get_spring_cloud_service_config_server_git_setting_repository.dart';
import 'get_spring_cloud_service_config_server_git_setting_ssh_auth.dart';

class GetSpringCloudServiceConfigServerGitSetting {
  /// A `httpBasicAuth` block as defined below.
  final pulumi.Input<List<GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth>> httpBasicAuths;
  /// The default label of the Git repository, which is a branch name, tag name, or commit-id of the repository
  final pulumi.Input<String> label;
  /// One or more `repository` blocks as defined below.
  final pulumi.Input<List<GetSpringCloudServiceConfigServerGitSettingRepository>> repositories;
  /// An array of strings used to search subdirectories of the Git repository.
  final pulumi.Input<List<String>> searchPaths;
  /// A `sshAuth` block as defined below.
  final pulumi.Input<List<GetSpringCloudServiceConfigServerGitSettingSshAuth>> sshAuths;
  /// The URI of the Git repository
  final pulumi.Input<String> uri;

  /// Creates a new [GetSpringCloudServiceConfigServerGitSetting].
  /// [httpBasicAuths] A `httpBasicAuth` block as defined below.
  /// [label] The default label of the Git repository, which is a branch name, tag name, or commit-id of the repository
  /// [repositories] One or more `repository` blocks as defined below.
  /// [searchPaths] An array of strings used to search subdirectories of the Git repository.
  /// [sshAuths] A `sshAuth` block as defined below.
  /// [uri] The URI of the Git repository
  const GetSpringCloudServiceConfigServerGitSetting({
    required this.httpBasicAuths,
    required this.label,
    required this.repositories,
    required this.searchPaths,
    required this.sshAuths,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpBasicAuths': pulumi.Input.mapInputValue<List<GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth>, List<Map<String, dynamic>>>(httpBasicAuths, (value) => pulumi.Input.encodeList<GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
      'repositories': pulumi.Input.mapInputValue<List<GetSpringCloudServiceConfigServerGitSettingRepository>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<GetSpringCloudServiceConfigServerGitSettingRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'searchPaths': searchPaths,
      'sshAuths': pulumi.Input.mapInputValue<List<GetSpringCloudServiceConfigServerGitSettingSshAuth>, List<Map<String, dynamic>>>(sshAuths, (value) => pulumi.Input.encodeList<GetSpringCloudServiceConfigServerGitSettingSshAuth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uri': uri,
    };
  }

  factory GetSpringCloudServiceConfigServerGitSetting.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudServiceConfigServerGitSetting(
      httpBasicAuths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth>(map['httpBasicAuths']!, (value) => GetSpringCloudServiceConfigServerGitSettingHttpBasicAuth.fromMap((value as Map).cast<String, dynamic>()))),
      label: pulumi.Input.fromValue(map['label'] as String),
      repositories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSpringCloudServiceConfigServerGitSettingRepository>(map['repositories']!, (value) => GetSpringCloudServiceConfigServerGitSettingRepository.fromMap((value as Map).cast<String, dynamic>()))),
      searchPaths: pulumi.Input.fromValue((map['searchPaths'] as List).cast<String>()),
      sshAuths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSpringCloudServiceConfigServerGitSettingSshAuth>(map['sshAuths']!, (value) => GetSpringCloudServiceConfigServerGitSettingSshAuth.fromMap((value as Map).cast<String, dynamic>()))),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
