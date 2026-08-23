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
  const GitLabEnterpriseConfig({
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
      hostUri: (() { final guardedValue = map['hostUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslCa: (() { final guardedValue = map['sslCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
