// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_bitbucket_cloud_config.dart';
import 'connection_bitbucket_data_center_config.dart';
import 'connection_crypto_key_config.dart';
import 'connection_github_config.dart';
import 'connection_github_enterprise_config.dart';
import 'connection_gitlab_config.dart';
import 'connection_gitlab_enterprise_config.dart';
import 'connection_http_config.dart';

/// {@template pulumi_developerconnect_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_developerconnect_connection_connection_args_doc}
class ConnectionArgs {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Configuration for connections to an instance of Bitbucket Cloud.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketCloudConfig?>? bitbucketCloudConfig;
  /// Configuration for connections to an instance of Bitbucket Data Center.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfig?>? bitbucketDataCenterConfig;
  /// Required. Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// connectionId from the methodSignature of Create RPC
  final pulumi.Input<String> connectionId;
  /// The crypto key configuration. This field is used by the Customer-managed
  /// encryption keys (CMEK) feature.
  /// Structure is documented below.
  final pulumi.Input<ConnectionCryptoKeyConfig?>? cryptoKeyConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. If disabled is set to true, functionality is disabled for this connection.
  /// Repository based API methods and webhooks processing for repositories in
  /// this connection will be disabled.
  final pulumi.Input<bool?>? disabled;
  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String?>? etag;
  /// Configuration for connections to github.com.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubConfig?>? githubConfig;
  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubEnterpriseConfig?>? githubEnterpriseConfig;
  /// Configuration for connections to gitlab.com.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabConfig?>? gitlabConfig;
  /// Configuration for connections to an instance of GitLab Enterprise.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabEnterpriseConfig?>? gitlabEnterpriseConfig;
  /// Configuration for connections to an HTTP service provider.
  /// Structure is documented below.
  final pulumi.Input<ConnectionHttpConfig?>? httpConfig;
  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ConnectionArgs].
  /// [annotations] Optional. Allows clients to store small amounts of arbitrary data.
  /// [bitbucketCloudConfig] Configuration for connections to an instance of Bitbucket Cloud.
  /// [bitbucketDataCenterConfig] Configuration for connections to an instance of Bitbucket Data Center.
  /// [connectionId] Required. Id of the requesting object
  /// [cryptoKeyConfig] The crypto key configuration. This field is used by the Customer-managed
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] Optional. If disabled is set to true, functionality is disabled for this connection.
  /// [etag] Optional. This checksum is computed by the server based on the value of other
  /// [githubConfig] Configuration for connections to github.com.
  /// [githubEnterpriseConfig] Configuration for connections to an instance of GitHub Enterprise.
  /// [gitlabConfig] Configuration for connections to gitlab.com.
  /// [gitlabEnterpriseConfig] Configuration for connections to an instance of GitLab Enterprise.
  /// [httpConfig] Configuration for connections to an HTTP service provider.
  /// [labels] Optional. Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const ConnectionArgs({
    this.annotations,
    this.bitbucketCloudConfig,
    this.bitbucketDataCenterConfig,
    required this.connectionId,
    this.cryptoKeyConfig,
    this.deletionPolicy,
    this.disabled,
    this.etag,
    this.githubConfig,
    this.githubEnterpriseConfig,
    this.gitlabConfig,
    this.gitlabEnterpriseConfig,
    this.httpConfig,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bitbucketCloudConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionBitbucketCloudConfig, Map<String, dynamic>>(bitbucketCloudConfig, (value) => value.toMap()),
      'bitbucketDataCenterConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionBitbucketDataCenterConfig, Map<String, dynamic>>(bitbucketDataCenterConfig, (value) => value.toMap()),
      'connectionId': connectionId,
      'cryptoKeyConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionCryptoKeyConfig, Map<String, dynamic>>(cryptoKeyConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'disabled': ?disabled,
      'etag': ?etag,
      'githubConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGithubConfig, Map<String, dynamic>>(githubConfig, (value) => value.toMap()),
      'githubEnterpriseConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGithubEnterpriseConfig, Map<String, dynamic>>(githubEnterpriseConfig, (value) => value.toMap()),
      'gitlabConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGitlabConfig, Map<String, dynamic>>(gitlabConfig, (value) => value.toMap()),
      'gitlabEnterpriseConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGitlabEnterpriseConfig, Map<String, dynamic>>(gitlabEnterpriseConfig, (value) => value.toMap()),
      'httpConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionHttpConfig, Map<String, dynamic>>(httpConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      bitbucketCloudConfig: (() { final guardedValue = map['bitbucketCloudConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionBitbucketCloudConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bitbucketDataCenterConfig: (() { final guardedValue = map['bitbucketDataCenterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionBitbucketDataCenterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      cryptoKeyConfig: (() { final guardedValue = map['cryptoKeyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionCryptoKeyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      githubConfig: (() { final guardedValue = map['githubConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGithubConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubEnterpriseConfig: (() { final guardedValue = map['githubEnterpriseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGithubEnterpriseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitlabConfig: (() { final guardedValue = map['gitlabConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGitlabConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitlabEnterpriseConfig: (() { final guardedValue = map['gitlabEnterpriseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGitlabEnterpriseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpConfig: (() { final guardedValue = map['httpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionHttpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
