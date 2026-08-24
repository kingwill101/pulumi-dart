// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_project_deployment_configs_production_ai_bindings.dart';
import 'get_pages_project_deployment_configs_production_analytics_engine_datasets.dart';
import 'get_pages_project_deployment_configs_production_d1_databases.dart';
import 'get_pages_project_deployment_configs_production_durable_object_namespaces.dart';
import 'get_pages_project_deployment_configs_production_env_vars.dart';
import 'get_pages_project_deployment_configs_production_hyperdrive_bindings.dart';
import 'get_pages_project_deployment_configs_production_kv_namespaces.dart';
import 'get_pages_project_deployment_configs_production_limits.dart';
import 'get_pages_project_deployment_configs_production_mtls_certificates.dart';
import 'get_pages_project_deployment_configs_production_placement.dart';
import 'get_pages_project_deployment_configs_production_queue_producers.dart';
import 'get_pages_project_deployment_configs_production_r2_buckets.dart';
import 'get_pages_project_deployment_configs_production_services.dart';
import 'get_pages_project_deployment_configs_production_vectorize_bindings.dart';

class GetPagesProjectDeploymentConfigsProduction {
  /// Constellation bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionAiBindings>> aiBindings;
  /// Whether to always use the latest compatibility date for Pages Functions.
  final pulumi.Input<bool> alwaysUseLatestCompatibilityDate;
  /// Analytics Engine bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets>> analyticsEngineDatasets;
  /// Browser bindings used for Pages Functions.
  final pulumi.Input<Map<String, Map<String, dynamic>>> browsers;
  /// The major version of the build image to use for Pages Functions.
  final pulumi.Input<int> buildImageMajorVersion;
  /// Compatibility date used for Pages Functions.
  final pulumi.Input<String> compatibilityDate;
  /// Compatibility flags used for Pages Functions.
  final pulumi.Input<List<String>> compatibilityFlags;
  /// D1 databases used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionD1Databases>> d1Databases;
  /// Durable Object namespaces used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces>> durableObjectNamespaces;
  /// Environment variables used for builds and Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionEnvVars>> envVars;
  /// Whether to fail open when the deployment config cannot be applied.
  final pulumi.Input<bool> failOpen;
  /// Hyperdrive bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionHyperdriveBindings>> hyperdriveBindings;
  /// KV namespaces used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionKvNamespaces>> kvNamespaces;
  /// Limits for Pages Functions.
  final pulumi.Input<GetPagesProjectDeploymentConfigsProductionLimits> limits;
  /// mTLS bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionMtlsCertificates>> mtlsCertificates;
  /// Placement setting used for Pages Functions.
  final pulumi.Input<GetPagesProjectDeploymentConfigsProductionPlacement> placement;
  /// Queue Producer bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionQueueProducers>> queueProducers;
  /// R2 buckets used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionR2Buckets>> r2Buckets;
  /// Services used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionServices>> services;
  /// The usage model for Pages Functions.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String> usageModel;
  /// Vectorize bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectDeploymentConfigsProductionVectorizeBindings>> vectorizeBindings;
  /// Hash of the Wrangler configuration used for the deployment.
  final pulumi.Input<String> wranglerConfigHash;

  /// Creates a new [GetPagesProjectDeploymentConfigsProduction].
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
  const GetPagesProjectDeploymentConfigsProduction({
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
      'aiBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionAiBindings>, Map<String, Map<String, dynamic>>>(aiBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionAiBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alwaysUseLatestCompatibilityDate': alwaysUseLatestCompatibilityDate,
      'analyticsEngineDatasets': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets>, Map<String, Map<String, dynamic>>>(analyticsEngineDatasets, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'browsers': browsers,
      'buildImageMajorVersion': buildImageMajorVersion,
      'compatibilityDate': compatibilityDate,
      'compatibilityFlags': compatibilityFlags,
      'd1Databases': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionD1Databases>, Map<String, Map<String, dynamic>>>(d1Databases, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionD1Databases, Map<String, dynamic>>(value, (value) => value.toMap())),
      'durableObjectNamespaces': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces>, Map<String, Map<String, dynamic>>>(durableObjectNamespaces, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envVars': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionEnvVars>, Map<String, Map<String, dynamic>>>(envVars, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionEnvVars, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failOpen': failOpen,
      'hyperdriveBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionHyperdriveBindings>, Map<String, Map<String, dynamic>>>(hyperdriveBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionHyperdriveBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kvNamespaces': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionKvNamespaces>, Map<String, Map<String, dynamic>>>(kvNamespaces, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionKvNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': pulumi.Input.mapInputValue<GetPagesProjectDeploymentConfigsProductionLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'mtlsCertificates': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionMtlsCertificates>, Map<String, Map<String, dynamic>>>(mtlsCertificates, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionMtlsCertificates, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': pulumi.Input.mapInputValue<GetPagesProjectDeploymentConfigsProductionPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'queueProducers': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionQueueProducers>, Map<String, Map<String, dynamic>>>(queueProducers, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionQueueProducers, Map<String, dynamic>>(value, (value) => value.toMap())),
      'r2Buckets': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionR2Buckets>, Map<String, Map<String, dynamic>>>(r2Buckets, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionR2Buckets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'services': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionServices>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionServices, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageModel': usageModel,
      'vectorizeBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectDeploymentConfigsProductionVectorizeBindings>, Map<String, Map<String, dynamic>>>(vectorizeBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectDeploymentConfigsProductionVectorizeBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wranglerConfigHash': wranglerConfigHash,
    };
  }

  factory GetPagesProjectDeploymentConfigsProduction.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProduction(
      aiBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionAiBindings>(map['aiBindings']!, (value) => GetPagesProjectDeploymentConfigsProductionAiBindings.fromMap((value as Map).cast<String, dynamic>()))),
      alwaysUseLatestCompatibilityDate: pulumi.Input.fromValue(map['alwaysUseLatestCompatibilityDate'] as bool),
      analyticsEngineDatasets: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets>(map['analyticsEngineDatasets']!, (value) => GetPagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets.fromMap((value as Map).cast<String, dynamic>()))),
      browsers: pulumi.Input.fromValue((map['browsers'] as Map).cast<String, Map<String, dynamic>>()),
      buildImageMajorVersion: pulumi.Input.fromValue((map['buildImageMajorVersion'] as num).toInt()),
      compatibilityDate: pulumi.Input.fromValue(map['compatibilityDate'] as String),
      compatibilityFlags: pulumi.Input.fromValue((map['compatibilityFlags'] as List).cast<String>()),
      d1Databases: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionD1Databases>(map['d1Databases']!, (value) => GetPagesProjectDeploymentConfigsProductionD1Databases.fromMap((value as Map).cast<String, dynamic>()))),
      durableObjectNamespaces: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces>(map['durableObjectNamespaces']!, (value) => GetPagesProjectDeploymentConfigsProductionDurableObjectNamespaces.fromMap((value as Map).cast<String, dynamic>()))),
      envVars: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionEnvVars>(map['envVars']!, (value) => GetPagesProjectDeploymentConfigsProductionEnvVars.fromMap((value as Map).cast<String, dynamic>()))),
      failOpen: pulumi.Input.fromValue(map['failOpen'] as bool),
      hyperdriveBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionHyperdriveBindings>(map['hyperdriveBindings']!, (value) => GetPagesProjectDeploymentConfigsProductionHyperdriveBindings.fromMap((value as Map).cast<String, dynamic>()))),
      kvNamespaces: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionKvNamespaces>(map['kvNamespaces']!, (value) => GetPagesProjectDeploymentConfigsProductionKvNamespaces.fromMap((value as Map).cast<String, dynamic>()))),
      limits: pulumi.Input.fromValue(GetPagesProjectDeploymentConfigsProductionLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())),
      mtlsCertificates: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionMtlsCertificates>(map['mtlsCertificates']!, (value) => GetPagesProjectDeploymentConfigsProductionMtlsCertificates.fromMap((value as Map).cast<String, dynamic>()))),
      placement: pulumi.Input.fromValue(GetPagesProjectDeploymentConfigsProductionPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      queueProducers: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionQueueProducers>(map['queueProducers']!, (value) => GetPagesProjectDeploymentConfigsProductionQueueProducers.fromMap((value as Map).cast<String, dynamic>()))),
      r2Buckets: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionR2Buckets>(map['r2Buckets']!, (value) => GetPagesProjectDeploymentConfigsProductionR2Buckets.fromMap((value as Map).cast<String, dynamic>()))),
      services: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionServices>(map['services']!, (value) => GetPagesProjectDeploymentConfigsProductionServices.fromMap((value as Map).cast<String, dynamic>()))),
      usageModel: pulumi.Input.fromValue(map['usageModel'] as String),
      vectorizeBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectDeploymentConfigsProductionVectorizeBindings>(map['vectorizeBindings']!, (value) => GetPagesProjectDeploymentConfigsProductionVectorizeBindings.fromMap((value as Map).cast<String, dynamic>()))),
      wranglerConfigHash: pulumi.Input.fromValue(map['wranglerConfigHash'] as String),
    );
  }
}
