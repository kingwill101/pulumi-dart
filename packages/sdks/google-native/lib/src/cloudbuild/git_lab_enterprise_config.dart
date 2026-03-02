// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_directory_config.dart';

/// GitLabEnterpriseConfig represents the configuration for a GitLabEnterprise integration.
class GitLabEnterpriseConfig {
  /// Immutable. The URI of the GitlabEnterprise host.
  final pulumi.Input<String>? hostUri;
  /// The Service Directory configuration to be used when reaching out to the GitLab Enterprise instance.
  final pulumi.Input<ServiceDirectoryConfig>? serviceDirectoryConfig;
  /// The SSL certificate to use in requests to GitLab Enterprise instances.
  final pulumi.Input<String>? sslCa;

  /// Creates a new [GitLabEnterpriseConfig].
  /// [hostUri] Immutable. The URI of the GitlabEnterprise host.
  /// [serviceDirectoryConfig] The Service Directory configuration to be used when reaching out to the GitLab Enterprise instance.
  /// [sslCa] The SSL certificate to use in requests to GitLab Enterprise instances.
  GitLabEnterpriseConfig({
    this.hostUri,
    this.serviceDirectoryConfig,
    this.sslCa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostUri': ?hostUri,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCa': ?sslCa,
    };
  }

  factory GitLabEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return GitLabEnterpriseConfig(
      hostUri: map['hostUri'] == null ? null : (map['hostUri'] as String).input(),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null ? null : (ServiceDirectoryConfig.fromMap((map['serviceDirectoryConfig'] as Map).cast<String, dynamic>())).input(),
      sslCa: map['sslCa'] == null ? null : (map['sslCa'] as String).input(),
    );
  }
}

