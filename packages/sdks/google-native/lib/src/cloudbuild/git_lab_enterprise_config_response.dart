// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_directory_config_response.dart';

/// GitLabEnterpriseConfig represents the configuration for a GitLabEnterprise integration.
class GitLabEnterpriseConfigResponse {
  /// Immutable. The URI of the GitlabEnterprise host.
  final pulumi.Input<String> hostUri;
  /// The Service Directory configuration to be used when reaching out to the GitLab Enterprise instance.
  final pulumi.Input<ServiceDirectoryConfigResponse> serviceDirectoryConfig;
  /// The SSL certificate to use in requests to GitLab Enterprise instances.
  final pulumi.Input<String> sslCa;

  /// Creates a new [GitLabEnterpriseConfigResponse].
  /// [hostUri] Immutable. The URI of the GitlabEnterprise host.
  /// [serviceDirectoryConfig] The Service Directory configuration to be used when reaching out to the GitLab Enterprise instance.
  /// [sslCa] The SSL certificate to use in requests to GitLab Enterprise instances.
  GitLabEnterpriseConfigResponse({
    required this.hostUri,
    required this.serviceDirectoryConfig,
    required this.sslCa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostUri': hostUri,
      'serviceDirectoryConfig': pulumi.Input.mapInputValue<ServiceDirectoryConfigResponse, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCa': sslCa,
    };
  }

  factory GitLabEnterpriseConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitLabEnterpriseConfigResponse(
      hostUri: pulumi.Input.fromValue(map['hostUri'] as String),
      serviceDirectoryConfig: pulumi.Input.fromValue(ServiceDirectoryConfigResponse.fromMap((map['serviceDirectoryConfig']! as Map).cast<String, dynamic>())),
      sslCa: pulumi.Input.fromValue(map['sslCa'] as String),
    );
  }
}

