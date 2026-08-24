// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_projects_result_deployment_configs_preview_ai_bindings.dart';
import 'get_pages_projects_result_deployment_configs_preview_analytics_engine_datasets.dart';
import 'get_pages_projects_result_deployment_configs_preview_d1_databases.dart';
import 'get_pages_projects_result_deployment_configs_preview_durable_object_namespaces.dart';
import 'get_pages_projects_result_deployment_configs_preview_env_vars.dart';
import 'get_pages_projects_result_deployment_configs_preview_hyperdrive_bindings.dart';
import 'get_pages_projects_result_deployment_configs_preview_kv_namespaces.dart';
import 'get_pages_projects_result_deployment_configs_preview_limits.dart';
import 'get_pages_projects_result_deployment_configs_preview_mtls_certificates.dart';
import 'get_pages_projects_result_deployment_configs_preview_placement.dart';
import 'get_pages_projects_result_deployment_configs_preview_queue_producers.dart';
import 'get_pages_projects_result_deployment_configs_preview_r2_buckets.dart';
import 'get_pages_projects_result_deployment_configs_preview_services.dart';
import 'get_pages_projects_result_deployment_configs_preview_vectorize_bindings.dart';

class GetPagesProjectsResultDeploymentConfigsPreview {
  /// Constellation bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewAiBindings>> aiBindings;
  /// Whether to always use the latest compatibility date for Pages Functions.
  final pulumi.Input<bool> alwaysUseLatestCompatibilityDate;
  /// Analytics Engine bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets>> analyticsEngineDatasets;
  /// Browser bindings used for Pages Functions.
  final pulumi.Input<Map<String, Map<String, dynamic>>> browsers;
  /// The major version of the build image to use for Pages Functions.
  final pulumi.Input<int> buildImageMajorVersion;
  /// Compatibility date used for Pages Functions.
  final pulumi.Input<String> compatibilityDate;
  /// Compatibility flags used for Pages Functions.
  final pulumi.Input<List<String>> compatibilityFlags;
  /// D1 databases used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewD1Databases>> d1Databases;
  /// Durable Object namespaces used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces>> durableObjectNamespaces;
  /// Environment variables used for builds and Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewEnvVars>> envVars;
  /// Whether to fail open when the deployment config cannot be applied.
  final pulumi.Input<bool> failOpen;
  /// Hyperdrive bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings>> hyperdriveBindings;
  /// KV namespaces used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces>> kvNamespaces;
  /// Limits for Pages Functions.
  final pulumi.Input<GetPagesProjectsResultDeploymentConfigsPreviewLimits> limits;
  /// mTLS bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates>> mtlsCertificates;
  /// Placement setting used for Pages Functions.
  final pulumi.Input<GetPagesProjectsResultDeploymentConfigsPreviewPlacement> placement;
  /// Queue Producer bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers>> queueProducers;
  /// R2 buckets used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewR2Buckets>> r2Buckets;
  /// Services used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewServices>> services;
  /// The usage model for Pages Functions.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String> usageModel;
  /// Vectorize bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings>> vectorizeBindings;
  /// Hash of the Wrangler configuration used for the deployment.
  final pulumi.Input<String> wranglerConfigHash;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreview].
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
  const GetPagesProjectsResultDeploymentConfigsPreview({
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
      'aiBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewAiBindings>, Map<String, Map<String, dynamic>>>(aiBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewAiBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alwaysUseLatestCompatibilityDate': alwaysUseLatestCompatibilityDate,
      'analyticsEngineDatasets': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets>, Map<String, Map<String, dynamic>>>(analyticsEngineDatasets, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'browsers': browsers,
      'buildImageMajorVersion': buildImageMajorVersion,
      'compatibilityDate': compatibilityDate,
      'compatibilityFlags': compatibilityFlags,
      'd1Databases': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewD1Databases>, Map<String, Map<String, dynamic>>>(d1Databases, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewD1Databases, Map<String, dynamic>>(value, (value) => value.toMap())),
      'durableObjectNamespaces': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces>, Map<String, Map<String, dynamic>>>(durableObjectNamespaces, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envVars': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewEnvVars>, Map<String, Map<String, dynamic>>>(envVars, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewEnvVars, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failOpen': failOpen,
      'hyperdriveBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings>, Map<String, Map<String, dynamic>>>(hyperdriveBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kvNamespaces': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces>, Map<String, Map<String, dynamic>>>(kvNamespaces, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': pulumi.Input.mapInputValue<GetPagesProjectsResultDeploymentConfigsPreviewLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'mtlsCertificates': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates>, Map<String, Map<String, dynamic>>>(mtlsCertificates, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': pulumi.Input.mapInputValue<GetPagesProjectsResultDeploymentConfigsPreviewPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'queueProducers': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers>, Map<String, Map<String, dynamic>>>(queueProducers, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers, Map<String, dynamic>>(value, (value) => value.toMap())),
      'r2Buckets': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewR2Buckets>, Map<String, Map<String, dynamic>>>(r2Buckets, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewR2Buckets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'services': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewServices>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewServices, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageModel': usageModel,
      'vectorizeBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings>, Map<String, Map<String, dynamic>>>(vectorizeBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wranglerConfigHash': wranglerConfigHash,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreview.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreview(
      aiBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewAiBindings>(map['aiBindings']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewAiBindings.fromMap((value as Map).cast<String, dynamic>()))),
      alwaysUseLatestCompatibilityDate: pulumi.Input.fromValue(map['alwaysUseLatestCompatibilityDate'] as bool),
      analyticsEngineDatasets: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets>(map['analyticsEngineDatasets']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewAnalyticsEngineDatasets.fromMap((value as Map).cast<String, dynamic>()))),
      browsers: pulumi.Input.fromValue((map['browsers'] as Map).cast<String, Map<String, dynamic>>()),
      buildImageMajorVersion: pulumi.Input.fromValue((map['buildImageMajorVersion'] as num).toInt()),
      compatibilityDate: pulumi.Input.fromValue(map['compatibilityDate'] as String),
      compatibilityFlags: pulumi.Input.fromValue((map['compatibilityFlags'] as List).cast<String>()),
      d1Databases: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewD1Databases>(map['d1Databases']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewD1Databases.fromMap((value as Map).cast<String, dynamic>()))),
      durableObjectNamespaces: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces>(map['durableObjectNamespaces']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewDurableObjectNamespaces.fromMap((value as Map).cast<String, dynamic>()))),
      envVars: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewEnvVars>(map['envVars']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewEnvVars.fromMap((value as Map).cast<String, dynamic>()))),
      failOpen: pulumi.Input.fromValue(map['failOpen'] as bool),
      hyperdriveBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings>(map['hyperdriveBindings']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings.fromMap((value as Map).cast<String, dynamic>()))),
      kvNamespaces: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces>(map['kvNamespaces']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewKvNamespaces.fromMap((value as Map).cast<String, dynamic>()))),
      limits: pulumi.Input.fromValue(GetPagesProjectsResultDeploymentConfigsPreviewLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())),
      mtlsCertificates: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates>(map['mtlsCertificates']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates.fromMap((value as Map).cast<String, dynamic>()))),
      placement: pulumi.Input.fromValue(GetPagesProjectsResultDeploymentConfigsPreviewPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      queueProducers: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers>(map['queueProducers']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewQueueProducers.fromMap((value as Map).cast<String, dynamic>()))),
      r2Buckets: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewR2Buckets>(map['r2Buckets']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewR2Buckets.fromMap((value as Map).cast<String, dynamic>()))),
      services: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewServices>(map['services']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewServices.fromMap((value as Map).cast<String, dynamic>()))),
      usageModel: pulumi.Input.fromValue(map['usageModel'] as String),
      vectorizeBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings>(map['vectorizeBindings']!, (value) => GetPagesProjectsResultDeploymentConfigsPreviewVectorizeBindings.fromMap((value as Map).cast<String, dynamic>()))),
      wranglerConfigHash: pulumi.Input.fromValue(map['wranglerConfigHash'] as String),
    );
  }
}
