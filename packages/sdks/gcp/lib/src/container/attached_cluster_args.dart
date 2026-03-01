// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_cluster_authorization.dart';
import 'attached_cluster_binary_authorization.dart';
import 'attached_cluster_fleet.dart';
import 'attached_cluster_logging_config.dart';
import 'attached_cluster_monitoring_config.dart';
import 'attached_cluster_oidc_config.dart';
import 'attached_cluster_proxy_config.dart';
import 'attached_cluster_security_posture_config.dart';

/// {@template pulumi_container_attached_cluster_attached_cluster_args_doc}
/// The set of arguments for AttachedCluster.
/// {@endtemplate}
/// {@macro pulumi_container_attached_cluster_attached_cluster_args_doc}
class AttachedClusterArgs {
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
  /// Policy to determine what flags to send on delete. Possible values: DELETE, DELETE_IGNORE_ERRORS
  final pulumi.Input<String>? deletionPolicy;
  /// A human readable description of this attached cluster. Cannot be longer
  /// than 255 UTF-8 encoded bytes.
  final pulumi.Input<String>? description;
  /// The Kubernetes distribution of the underlying attached cluster. Supported values:
  /// "eks", "aks", "generic". The generic distribution provides the ability to register
  /// or migrate any CNCF conformant cluster.
  final pulumi.Input<String> distribution;
  /// Fleet configuration.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterFleet> fleet;
  /// The location for the resource
  final pulumi.Input<String> location;
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
  final pulumi.Input<AttachedClusterOidcConfig> oidcConfig;
  /// The platform version for the cluster (e.g. `1.23.0-gke.1`).
  final pulumi.Input<String> platformVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Support for proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterProxyConfig>? proxyConfig;
  /// (Optional, Deprecated)
  /// Enable/Disable Security Posture API features for the cluster.
  /// Structure is documented below.
  ///
  /// > **Warning:** `security_posture_config` is deprecated and will be removed in a future major release.
  final pulumi.Input<AttachedClusterSecurityPostureConfig>? securityPostureConfig;

  /// Creates a new [AttachedClusterArgs].
  /// [annotations] Optional. Annotations on the cluster. This field has the same
  /// [authorization] Configuration related to the cluster RBAC settings.
  /// [binaryAuthorization] Binary Authorization configuration.
  /// [deletionPolicy] Policy to determine what flags to send on delete. Possible values: DELETE, DELETE_IGNORE_ERRORS
  /// [description] A human readable description of this attached cluster. Cannot be longer
  /// [distribution] The Kubernetes distribution of the underlying attached cluster. Supported values:
  /// [fleet] Fleet configuration.
  /// [location] The location for the resource
  /// [loggingConfig] Logging configuration.
  /// [monitoringConfig] Monitoring configuration.
  /// [name] The name of this resource.
  /// [oidcConfig] OIDC discovery information of the target cluster.
  /// [platformVersion] The platform version for the cluster (e.g. `1.23.0-gke.1`).
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyConfig] Support for proxy configuration.
  /// [securityPostureConfig] (Optional, Deprecated)
  AttachedClusterArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<AttachedClusterAuthorization>? authorization,
    pulumi.Output<AttachedClusterBinaryAuthorization>? binaryAuthorization,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? description,
    required pulumi.Output<String> distribution,
    required pulumi.Output<AttachedClusterFleet> fleet,
    required pulumi.Output<String> location,
    pulumi.Output<AttachedClusterLoggingConfig>? loggingConfig,
    pulumi.Output<AttachedClusterMonitoringConfig>? monitoringConfig,
    pulumi.Output<String>? name,
    required pulumi.Output<AttachedClusterOidcConfig> oidcConfig,
    required pulumi.Output<String> platformVersion,
    pulumi.Output<String>? project,
    pulumi.Output<AttachedClusterProxyConfig>? proxyConfig,
    pulumi.Output<AttachedClusterSecurityPostureConfig>? securityPostureConfig,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      authorization = pulumi.Input.asOptionalInput<AttachedClusterAuthorization>(authorization),
      binaryAuthorization = pulumi.Input.asOptionalInput<AttachedClusterBinaryAuthorization>(binaryAuthorization),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      distribution = pulumi.Input.asInput<String>(distribution),
      fleet = pulumi.Input.asInput<AttachedClusterFleet>(fleet),
      location = pulumi.Input.asInput<String>(location),
      loggingConfig = pulumi.Input.asOptionalInput<AttachedClusterLoggingConfig>(loggingConfig),
      monitoringConfig = pulumi.Input.asOptionalInput<AttachedClusterMonitoringConfig>(monitoringConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      oidcConfig = pulumi.Input.asInput<AttachedClusterOidcConfig>(oidcConfig),
      platformVersion = pulumi.Input.asInput<String>(platformVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyConfig = pulumi.Input.asOptionalInput<AttachedClusterProxyConfig>(proxyConfig),
      securityPostureConfig = pulumi.Input.asOptionalInput<AttachedClusterSecurityPostureConfig>(securityPostureConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authorization': ?pulumi.Input.mapOptionalInputValue<AttachedClusterAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<AttachedClusterBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'distribution': distribution,
      'fleet': pulumi.Input.mapInputValue<AttachedClusterFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'location': location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterMonitoringConfig, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'name': ?name,
      'oidcConfig': pulumi.Input.mapInputValue<AttachedClusterOidcConfig, Map<String, dynamic>>(oidcConfig, (value) => value.toMap()),
      'platformVersion': platformVersion,
      'project': ?project,
      'proxyConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterProxyConfig, Map<String, dynamic>>(proxyConfig, (value) => value.toMap()),
      'securityPostureConfig': ?pulumi.Input.mapOptionalInputValue<AttachedClusterSecurityPostureConfig, Map<String, dynamic>>(securityPostureConfig, (value) => value.toMap()),
    };
  }

  factory AttachedClusterArgs.fromMap(Map<String, dynamic> map) {
    return AttachedClusterArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      authorization: map['authorization'] == null ? null : pulumi.Output.create<AttachedClusterAuthorization>(AttachedClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : pulumi.Output.create<AttachedClusterBinaryAuthorization>(AttachedClusterBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distribution: pulumi.Output.create<String>(map['distribution'] as String),
      fleet: pulumi.Output.create<AttachedClusterFleet>(AttachedClusterFleet.fromMap((map['fleet'] as Map).cast<String, dynamic>())),
      location: pulumi.Output.create<String>(map['location'] as String),
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<AttachedClusterLoggingConfig>(AttachedClusterLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      monitoringConfig: map['monitoringConfig'] == null ? null : pulumi.Output.create<AttachedClusterMonitoringConfig>(AttachedClusterMonitoringConfig.fromMap((map['monitoringConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oidcConfig: pulumi.Output.create<AttachedClusterOidcConfig>(AttachedClusterOidcConfig.fromMap((map['oidcConfig'] as Map).cast<String, dynamic>())),
      platformVersion: pulumi.Output.create<String>(map['platformVersion'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxyConfig: map['proxyConfig'] == null ? null : pulumi.Output.create<AttachedClusterProxyConfig>(AttachedClusterProxyConfig.fromMap((map['proxyConfig'] as Map).cast<String, dynamic>())),
      securityPostureConfig: map['securityPostureConfig'] == null ? null : pulumi.Output.create<AttachedClusterSecurityPostureConfig>(AttachedClusterSecurityPostureConfig.fromMap((map['securityPostureConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

