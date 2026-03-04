// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_bitbucket_cloud_config.dart';
import 'connection_bitbucket_data_center_config.dart';
import 'connection_crypto_key_config.dart';
import 'connection_github_config.dart';
import 'connection_github_enterprise_config.dart';
import 'connection_gitlab_config.dart';
import 'connection_gitlab_enterprise_config.dart';
import 'connection_installation_state.dart';

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Configuration for connections to an instance of Bitbucket Cloud.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketCloudConfig>? bitbucketCloudConfig;

  /// Configuration for connections to an instance of Bitbucket Data Center.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfig>?
  bitbucketDataCenterConfig;

  /// Required. Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// connection_id from the method_signature of Create RPC
  final pulumi.Input<String>? connectionId;

  /// Output only. [Output only] Create timestamp
  final pulumi.Input<String>? createTime;

  /// The crypto key configuration. This field is used by the Customer-managed
  /// encryption keys (CMEK) feature.
  /// Structure is documented below.
  final pulumi.Input<ConnectionCryptoKeyConfig>? cryptoKeyConfig;

  /// Output only. [Output only] Delete timestamp
  final pulumi.Input<String>? deleteTime;

  /// Optional. If disabled is set to true, functionality is disabled for this connection.
  /// Repository based API methods and webhooks processing for repositories in
  /// this connection will be disabled.
  final pulumi.Input<bool>? disabled;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Configuration for connections to github.com.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubConfig>? githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubEnterpriseConfig>? githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabConfig>? gitlabConfig;

  /// Configuration for connections to an instance of GitLab Enterprise.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabEnterpriseConfig>? gitlabEnterpriseConfig;

  /// Describes stage and necessary actions to be taken by the
  /// user to complete the installation. Used for GitHub and GitHub Enterprise
  /// based connections.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionInstallationState>>? installationStates;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;

  /// Identifier. The resource name of the connection, in the format
  /// `projects/{project}/locations/{location}/connections/{connection_id}`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Output only. Set to true when the connection is being set up or updated in the
  /// background.
  final pulumi.Input<bool>? reconciling;

  /// Output only. A system-assigned unique identifier for a the GitRepositoryLink.
  final pulumi.Input<String>? uid;

  /// Output only. [Output only] Update timestamp
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ConnectionState].
  /// [annotations] Optional. Allows clients to store small amounts of arbitrary data.
  /// [bitbucketCloudConfig] Configuration for connections to an instance of Bitbucket Cloud.
  /// [bitbucketDataCenterConfig] Configuration for connections to an instance of Bitbucket Data Center.
  /// [connectionId] Required. Id of the requesting object
  /// [createTime] Output only. [Output only] Create timestamp
  /// [cryptoKeyConfig] The crypto key configuration. This field is used by the Customer-managed
  /// [deleteTime] Output only. [Output only] Delete timestamp
  /// [disabled] Optional. If disabled is set to true, functionality is disabled for this connection.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Optional. This checksum is computed by the server based on the value of other
  /// [githubConfig] Configuration for connections to github.com.
  /// [githubEnterpriseConfig] Configuration for connections to an instance of GitHub Enterprise.
  /// [gitlabConfig] Configuration for connections to gitlab.com.
  /// [gitlabEnterpriseConfig] Configuration for connections to an instance of GitLab Enterprise.
  /// [installationStates] Describes stage and necessary actions to be taken by the
  /// [labels] Optional. Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the connection, in the format
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Output only. Set to true when the connection is being set up or updated in the
  /// [uid] Output only. A system-assigned unique identifier for a the GitRepositoryLink.
  /// [updateTime] Output only. [Output only] Update timestamp
  ConnectionState({
    this.annotations,
    this.bitbucketCloudConfig,
    this.bitbucketDataCenterConfig,
    this.connectionId,
    this.createTime,
    this.cryptoKeyConfig,
    this.deleteTime,
    this.disabled,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.githubConfig,
    this.githubEnterpriseConfig,
    this.gitlabConfig,
    this.gitlabEnterpriseConfig,
    this.installationStates,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bitbucketCloudConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionBitbucketCloudConfig,
            Map<String, dynamic>
          >(bitbucketCloudConfig, (value) => value.toMap()),
      'bitbucketDataCenterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionBitbucketDataCenterConfig,
            Map<String, dynamic>
          >(bitbucketDataCenterConfig, (value) => value.toMap()),
      'connectionId': ?connectionId,
      'createTime': ?createTime,
      'cryptoKeyConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionCryptoKeyConfig,
            Map<String, dynamic>
          >(cryptoKeyConfig, (value) => value.toMap()),
      'deleteTime': ?deleteTime,
      'disabled': ?disabled,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'githubConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGithubConfig,
            Map<String, dynamic>
          >(githubConfig, (value) => value.toMap()),
      'githubEnterpriseConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGithubEnterpriseConfig,
            Map<String, dynamic>
          >(githubEnterpriseConfig, (value) => value.toMap()),
      'gitlabConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGitlabConfig,
            Map<String, dynamic>
          >(gitlabConfig, (value) => value.toMap()),
      'gitlabEnterpriseConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGitlabEnterpriseConfig,
            Map<String, dynamic>
          >(gitlabEnterpriseConfig, (value) => value.toMap()),
      'installationStates':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConnectionInstallationState>,
            List<Map<String, dynamic>>
          >(
            installationStates,
            (value) =>
                pulumi.Input.encodeList<
                  ConnectionInstallationState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      bitbucketCloudConfig: (() {
        final guardedValue = map['bitbucketCloudConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionBitbucketCloudConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      bitbucketDataCenterConfig: (() {
        final guardedValue = map['bitbucketDataCenterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionBitbucketDataCenterConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectionId: (() {
        final guardedValue = map['connectionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cryptoKeyConfig: (() {
        final guardedValue = map['cryptoKeyConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionCryptoKeyConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deleteTime: (() {
        final guardedValue = map['deleteTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      effectiveAnnotations: (() {
        final guardedValue = map['effectiveAnnotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      githubConfig: (() {
        final guardedValue = map['githubConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionGithubConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      githubEnterpriseConfig: (() {
        final guardedValue = map['githubEnterpriseConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionGithubEnterpriseConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gitlabConfig: (() {
        final guardedValue = map['gitlabConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionGitlabConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gitlabEnterpriseConfig: (() {
        final guardedValue = map['gitlabEnterpriseConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionGitlabEnterpriseConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      installationStates: (() {
        final guardedValue = map['installationStates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConnectionInstallationState>(
            guardedValue,
            (value) => ConnectionInstallationState.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      reconciling: (() {
        final guardedValue = map['reconciling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
