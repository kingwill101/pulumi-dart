// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_cluster_authorization.dart';
import 'attached_cluster_binary_authorization.dart';
import 'attached_cluster_error.dart';
import 'attached_cluster_fleet.dart';
import 'attached_cluster_logging_config.dart';
import 'attached_cluster_monitoring_config.dart';
import 'attached_cluster_oidc_config.dart';
import 'attached_cluster_proxy_config.dart';
import 'attached_cluster_security_posture_config.dart';
import 'attached_cluster_workload_identity_config.dart';

/// Input properties used for looking up and filtering AttachedCluster resources.
class AttachedClusterState {
  /// Optional. Annotations on the cluster. This field has the same
  /// restrictions as Kubernetes annotations. The total size of all keys and
  /// values combined is limited to 256k. Key can have 2 segments: prefix (optional)
  /// and name (required), separated by a slash (/). Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Configuration related to the cluster RBAC settings.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterAuthorization>? authorization;
  /// Binary Authorization configuration.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterBinaryAuthorization>? binaryAuthorization;
  /// Output only. The region where this cluster runs.
  /// For EKS clusters, this is an AWS region. For AKS clusters,
  /// this is an Azure region.
  final pulumi.Input<String>? clusterRegion;
  /// Output only. The time at which this cluster was created.
  final pulumi.Input<String>? createTime;
  /// Policy to determine what flags to send on delete. Possible values: DELETE, DELETE_IGNORE_ERRORS
  final pulumi.Input<String>? deletionPolicy;
  /// A human readable description of this attached cluster. Cannot be longer
  /// than 255 UTF-8 encoded bytes.
  final pulumi.Input<String>? description;
  /// The Kubernetes distribution of the underlying attached cluster. Supported values:
  /// "eks", "aks", "generic". The generic distribution provides the ability to register
  /// or migrate any CNCF conformant cluster.
  final pulumi.Input<String>? distribution;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// A set of errors found in the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<AttachedClusterError>>? errors;
  /// Fleet configuration.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterFleet>? fleet;
  /// The Kubernetes version of the cluster.
  final pulumi.Input<String>? kubernetesVersion;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Logging configuration.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterLoggingConfig>? loggingConfig;
  /// Monitoring configuration.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterMonitoringConfig>? monitoringConfig;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// OIDC discovery information of the target cluster.
  /// Kubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster
  /// API server. This fields indicates how GCP services
  /// validate KSA tokens in order to allow system workloads (such as GKE Connect
  /// and telemetry agents) to authenticate back to GCP.
  /// Both clusters with public and private issuer URLs are supported.
  /// Clusters with public issuers only need to specify the `issuer_url` field
  /// while clusters with private issuers need to provide both
  /// `issuer_url` and `jwks`.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterOidcConfig>? oidcConfig;
  /// The platform version for the cluster (e.g. `1.23.0-gke.1`).
  final pulumi.Input<String>? platformVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Support for proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterProxyConfig>? proxyConfig;
  /// If set, there are currently changes in flight to the cluster.
  final pulumi.Input<bool>? reconciling;
  /// (Optional, Deprecated)
  /// Enable/Disable Security Posture API features for the cluster.
  /// Structure is documented below.
  ///
  /// &gt; **Warning:** `security_posture_config` is deprecated and will be removed in a future major release.
  final pulumi.Input<AttachedClusterSecurityPostureConfig>? securityPostureConfig;
  /// The current state of the cluster. Possible values:
  /// STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR,
  /// DEGRADED
  final pulumi.Input<String>? state;
  /// A globally unique identifier for the cluster.
  final pulumi.Input<String>? uid;
  /// The time at which this cluster was last updated.
  final pulumi.Input<String>? updateTime;
  /// Workload Identity settings.
  /// Structure is documented below.
  final pulumi.Input<List<AttachedClusterWorkloadIdentityConfig>>? workloadIdentityConfigs;

  /// Creates a new [AttachedClusterState].
  /// [annotations] Optional. Annotations on the cluster. This field has the same
  /// [authorization] Configuration related to the cluster RBAC settings.
  /// [binaryAuthorization] Binary Authorization configuration.
  /// [clusterRegion] Output only. The region where this cluster runs.
  /// [createTime] Output only. The time at which this cluster was created.
  /// [deletionPolicy] Policy to determine what flags to send on delete. Possible values: DELETE, DELETE_IGNORE_ERRORS
  /// [description] A human readable description of this attached cluster. Cannot be longer
  /// [distribution] The Kubernetes distribution of the underlying attached cluster. Supported values:
  /// [effectiveAnnotations] Optional.
  /// [errors] A set of errors found in the cluster.
  /// [fleet] Fleet configuration.
  /// [kubernetesVersion] The Kubernetes version of the cluster.
  /// [location] The location for the resource
  /// [loggingConfig] Logging configuration.
  /// [monitoringConfig] Monitoring configuration.
  /// [name] The name of this resource.
  /// [oidcConfig] OIDC discovery information of the target cluster.
  /// [platformVersion] The platform version for the cluster (e.g. `1.23.0-gke.1`).
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyConfig] Support for proxy configuration.
  /// [reconciling] If set, there are currently changes in flight to the cluster.
  /// [securityPostureConfig] (Optional, Deprecated)
  /// [state] The current state of the cluster. Possible values:
  /// [uid] A globally unique identifier for the cluster.
  /// [updateTime] The time at which this cluster was last updated.
  /// [workloadIdentityConfigs] Workload Identity settings.
  AttachedClusterState({
    this.annotations,
    this.authorization,
    this.binaryAuthorization,
    this.clusterRegion,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.distribution,
    this.effectiveAnnotations,
    this.errors,
    this.fleet,
    this.kubernetesVersion,
    this.location,
    this.loggingConfig,
    this.monitoringConfig,
    this.name,
    this.oidcConfig,
    this.platformVersion,
    this.project,
    this.proxyConfig,
    this.reconciling,
    this.securityPostureConfig,
    this.state,
    this.uid,
    this.updateTime,
    this.workloadIdentityConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authorization': ?pulumi.Input.mapOptionalInputValue<AttachedClusterAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<AttachedClusterBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'clusterRegion': ?clusterRegion,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'distribution': ?distribution,
      'effectiveAnnotations': ?effectiveAnnotations,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AttachedClusterError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AttachedClusterError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fleet': ?pulumi.Input.mapOptionalInputValue<AttachedClusterFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'kubernetesVersion': ?kubernetesVersion,
      'location': ?location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterMonitoringConfig, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'name': ?name,
      'oidcConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterOidcConfig, Map<String, dynamic>>(oidcConfig, (value) => value.toMap()),
      'platformVersion': ?platformVersion,
      'project': ?project,
      'proxyConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterProxyConfig, Map<String, dynamic>>(proxyConfig, (value) => value.toMap()),
      'reconciling': ?reconciling,
      'securityPostureConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterSecurityPostureConfig, Map<String, dynamic>>(securityPostureConfig, (value) => value.toMap()),
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'workloadIdentityConfigs': ?pulumi.Input.mapOptionalInputValue<List<AttachedClusterWorkloadIdentityConfig>, List<Map<String, dynamic>>>(workloadIdentityConfigs, (value) => pulumi.Input.encodeList<AttachedClusterWorkloadIdentityConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AttachedClusterState.fromMap(Map<String, dynamic> map) {
    return AttachedClusterState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      binaryAuthorization: (() { final guardedValue = map['binaryAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterRegion: (() { final guardedValue = map['clusterRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AttachedClusterError>(guardedValue, (value) => AttachedClusterError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fleet: (() { final guardedValue = map['fleet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterFleet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringConfig: (() { final guardedValue = map['monitoringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcConfig: (() { final guardedValue = map['oidcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterOidcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyConfig: (() { final guardedValue = map['proxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityPostureConfig: (() { final guardedValue = map['securityPostureConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterSecurityPostureConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityConfigs: (() { final guardedValue = map['workloadIdentityConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AttachedClusterWorkloadIdentityConfig>(guardedValue, (value) => AttachedClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

