// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_project_deployment_configs_preview_ai_bindings.dart';
import 'get_pages_project_deployment_configs_preview_analytics_engine_datasets.dart';
import 'get_pages_project_deployment_configs_preview_d1_databases.dart';
import 'get_pages_project_deployment_configs_preview_durable_object_namespaces.dart';
import 'get_pages_project_deployment_configs_preview_env_vars.dart';
import 'get_pages_project_deployment_configs_preview_hyperdrive_bindings.dart';
import 'get_pages_project_deployment_configs_preview_kv_namespaces.dart';
import 'get_pages_project_deployment_configs_preview_limits.dart';
import 'get_pages_project_deployment_configs_preview_mtls_certificates.dart';
import 'get_pages_project_deployment_configs_preview_placement.dart';
import 'get_pages_project_deployment_configs_preview_queue_producers.dart';
import 'get_pages_project_deployment_configs_preview_r2_buckets.dart';
import 'get_pages_project_deployment_configs_preview_services.dart';
import 'get_pages_project_deployment_configs_preview_vectorize_bindings.dart';

class GetPagesProjectDeploymentConfigsPreview {
  /// Constellation bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewAiBindings>> aiBindings;
  /// Whether to always use the latest compatibility date for Pages Functions.
  final pulumi.Input<bool> alwaysUseLatestCompatibilityDate;
  /// Analytics Engine bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets>> analyticsEngineDatasets;
  /// Browser bindings used for Pages Functions.
  final pulumi.Input<Map<String, Map<String, dynamic>>> browsers;
  /// The major version of the build image to use for Pages Functions.
  final pulumi.Input<int> buildImageMajorVersion;
  /// Compatibility date used for Pages Functions.
  final pulumi.Input<String> compatibilityDate;
  /// Compatibility flags used for Pages Functions.
  final pulumi.Input<List<String>> compatibilityFlags;
  /// D1 databases used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewD1Databases>> d1Databases;
  /// Durable Object namespaces used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces>> durableObjectNamespaces;
  /// Environment variables used for builds and Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewEnvVars>> envVars;
  /// Whether to fail open when the deployment config cannot be applied.
  final pulumi.Input<bool> failOpen;
  /// Hyperdrive bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings>> hyperdriveBindings;
  /// KV namespaces used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewKvNamespaces>> kvNamespaces;
  /// Limits for Pages Functions.
  final pulumi.Input<GetPagesProjectDeploymentConfigsPreviewLimits> limits;
  /// mTLS bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewMtlsCertificates>> mtlsCertificates;
  /// Placement setting used for Pages Functions.
  final pulumi.Input<GetPagesProjectDeploymentConfigsPreviewPlacement> placement;
  /// Queue Producer bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewQueueProducers>> queueProducers;
  /// R2 buckets used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewR2Buckets>> r2Buckets;
  /// Services used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewServices>> services;
  /// The usage model for Pages Functions.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String> usageModel;
  /// Vectorize bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsPreviewVectorizeBindings>> vectorizeBindings;
  /// Hash of the Wrangler configuration used for the deployment.
  final pulumi.Input<String> wranglerConfigHash;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreview].
  /// [aiBindings] Constellation bindings used for Pages Functions.
  /// [alwaysUseLatestCompatibilityDate] Whether to always use the latest compatibility date for Pages Functions.
  /// [analyticsEngineDatasets] Analytics Engine bindings used for Pages Functions.
  /// [browsers] Browser bindings used for Pages Functions.
  /// [buildImageMajorVersion] The major version of the build image to use for Pages Functions.
  /// [compatibilityDate] Compatibility date used for Pages Functions.
  /// [compatibilityFlags] Compatibility flags used for Pages Functions.
  /// [d1Databases] D1 databases used for Pages Functions.
  /// [durableObjectNamespaces] Durable Object namespaces used for Pages Functions.
  /// [envVars] Environment variables used for builds and Pages Functions.
  /// [failOpen] Whether to fail open when the deployment config cannot be applied.
  /// [hyperdriveBindings] Hyperdrive bindings used for Pages Functions.
  /// [kvNamespaces] KV namespaces used for Pages Functions.
  /// [limits] Limits for Pages Functions.
  /// [mtlsCertificates] mTLS bindings used for Pages Functions.
  /// [placement] Placement setting used for Pages Functions.
  /// [queueProducers] Queue Producer bindings used for Pages Functions.
  /// [r2Buckets] R2 buckets used for Pages Functions.
  /// [services] Services used for Pages Functions.
  /// [usageModel] The usage model for Pages Functions.
  /// [vectorizeBindings] Vectorize bindings used for Pages Functions.
  /// [wranglerConfigHash] Hash of the Wrangler configuration used for the deployment.
  const GetPagesProjectDeploymentConfigsPreview({
    required this.aiBindings,
    required this.alwaysUseLatestCompatibilityDate,
    required this.analyticsEngineDatasets,
    required this.browsers,
    required this.buildImageMajorVersion,
    required this.compatibilityDate,
    required this.compatibilityFlags,
    required this.d1Databases,
    required this.durableObjectNamespaces,
    required this.envVars,
    required this.failOpen,
    required this.hyperdriveBindings,
    required this.kvNamespaces,
    required this.limits,
    required this.mtlsCertificates,
    required this.placement,
    required this.queueProducers,
    required this.r2Buckets,
    required this.services,
    required this.usageModel,
    required this.vectorizeBindings,
    required this.wranglerConfigHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewAiBindings>, Map<String, Map<String, dynamic>>>(aiBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewAiBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alwaysUseLatestCompatibilityDate': alwaysUseLatestCompatibilityDate,
      'analyticsEngineDatasets': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets>, Map<String, Map<String, dynamic>>>(analyticsEngineDatasets, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'browsers': browsers,
      'buildImageMajorVersion': buildImageMajorVersion,
      'compatibilityDate': compatibilityDate,
      'compatibilityFlags': compatibilityFlags,
      'd1Databases': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewD1Databases>, Map<String, Map<String, dynamic>>>(d1Databases, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewD1Databases, Map<String, dynamic>>(value, (value) => value.toMap())),
      'durableObjectNamespaces': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces>, Map<String, Map<String, dynamic>>>(durableObjectNamespaces, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envVars': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewEnvVars>, Map<String, Map<String, dynamic>>>(envVars, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewEnvVars, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failOpen': failOpen,
      'hyperdriveBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings>, Map<String, Map<String, dynamic>>>(hyperdriveBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kvNamespaces': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewKvNamespaces>, Map<String, Map<String, dynamic>>>(kvNamespaces, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewKvNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': pulumi.Input.mapInputValue<GetPagesProjectDeploymentConfigsPreviewLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'mtlsCertificates': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewMtlsCertificates>, Map<String, Map<String, dynamic>>>(mtlsCertificates, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewMtlsCertificates, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': pulumi.Input.mapInputValue<GetPagesProjectDeploymentConfigsPreviewPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'queueProducers': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewQueueProducers>, Map<String, Map<String, dynamic>>>(queueProducers, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewQueueProducers, Map<String, dynamic>>(value, (value) => value.toMap())),
      'r2Buckets': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewR2Buckets>, Map<String, Map<String, dynamic>>>(r2Buckets, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewR2Buckets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'services': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewServices>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewServices, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageModel': usageModel,
      'vectorizeBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsPreviewVectorizeBindings>, Map<String, Map<String, dynamic>>>(vectorizeBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsPreviewVectorizeBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wranglerConfigHash': wranglerConfigHash,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreview.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreview(
      aiBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewAiBindings>(map['aiBindings']!, (value) => GetPagesProjectDeploymentConfigsPreviewAiBindings.fromMap((value as Map).cast<String, dynamic>()))),
      alwaysUseLatestCompatibilityDate: pulumi.Input.fromValue(map['alwaysUseLatestCompatibilityDate'] as bool),
      analyticsEngineDatasets: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets>(map['analyticsEngineDatasets']!, (value) => GetPagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets.fromMap((value as Map).cast<String, dynamic>()))),
      browsers: pulumi.Input.fromValue((map['browsers'] as Map).cast<String, Map<String, dynamic>>()),
      buildImageMajorVersion: pulumi.Input.fromValue((map['buildImageMajorVersion'] as num).toInt()),
      compatibilityDate: pulumi.Input.fromValue(map['compatibilityDate'] as String),
      compatibilityFlags: pulumi.Input.fromValue((map['compatibilityFlags'] as List).cast<String>()),
      d1Databases: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewD1Databases>(map['d1Databases']!, (value) => GetPagesProjectDeploymentConfigsPreviewD1Databases.fromMap((value as Map).cast<String, dynamic>()))),
      durableObjectNamespaces: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces>(map['durableObjectNamespaces']!, (value) => GetPagesProjectDeploymentConfigsPreviewDurableObjectNamespaces.fromMap((value as Map).cast<String, dynamic>()))),
      envVars: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewEnvVars>(map['envVars']!, (value) => GetPagesProjectDeploymentConfigsPreviewEnvVars.fromMap((value as Map).cast<String, dynamic>()))),
      failOpen: pulumi.Input.fromValue(map['failOpen'] as bool),
      hyperdriveBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings>(map['hyperdriveBindings']!, (value) => GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings.fromMap((value as Map).cast<String, dynamic>()))),
      kvNamespaces: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewKvNamespaces>(map['kvNamespaces']!, (value) => GetPagesProjectDeploymentConfigsPreviewKvNamespaces.fromMap((value as Map).cast<String, dynamic>()))),
      limits: pulumi.Input.fromValue(GetPagesProjectDeploymentConfigsPreviewLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())),
      mtlsCertificates: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewMtlsCertificates>(map['mtlsCertificates']!, (value) => GetPagesProjectDeploymentConfigsPreviewMtlsCertificates.fromMap((value as Map).cast<String, dynamic>()))),
      placement: pulumi.Input.fromValue(GetPagesProjectDeploymentConfigsPreviewPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      queueProducers: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewQueueProducers>(map['queueProducers']!, (value) => GetPagesProjectDeploymentConfigsPreviewQueueProducers.fromMap((value as Map).cast<String, dynamic>()))),
      r2Buckets: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewR2Buckets>(map['r2Buckets']!, (value) => GetPagesProjectDeploymentConfigsPreviewR2Buckets.fromMap((value as Map).cast<String, dynamic>()))),
      services: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewServices>(map['services']!, (value) => GetPagesProjectDeploymentConfigsPreviewServices.fromMap((value as Map).cast<String, dynamic>()))),
      usageModel: pulumi.Input.fromValue(map['usageModel'] as String),
      vectorizeBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsPreviewVectorizeBindings>(map['vectorizeBindings']!, (value) => GetPagesProjectDeploymentConfigsPreviewVectorizeBindings.fromMap((value as Map).cast<String, dynamic>()))),
      wranglerConfigHash: pulumi.Input.fromValue(map['wranglerConfigHash'] as String),
    );
  }
}
