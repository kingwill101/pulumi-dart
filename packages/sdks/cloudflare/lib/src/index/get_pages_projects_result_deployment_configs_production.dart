// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_projects_result_deployment_configs_production_ai_bindings.dart';
import 'get_pages_projects_result_deployment_configs_production_analytics_engine_datasets.dart';
import 'get_pages_projects_result_deployment_configs_production_d1_databases.dart';
import 'get_pages_projects_result_deployment_configs_production_durable_object_namespaces.dart';
import 'get_pages_projects_result_deployment_configs_production_env_vars.dart';
import 'get_pages_projects_result_deployment_configs_production_hyperdrive_bindings.dart';
import 'get_pages_projects_result_deployment_configs_production_kv_namespaces.dart';
import 'get_pages_projects_result_deployment_configs_production_limits.dart';
import 'get_pages_projects_result_deployment_configs_production_mtls_certificates.dart';
import 'get_pages_projects_result_deployment_configs_production_placement.dart';
import 'get_pages_projects_result_deployment_configs_production_queue_producers.dart';
import 'get_pages_projects_result_deployment_configs_production_r2_buckets.dart';
import 'get_pages_projects_result_deployment_configs_production_services.dart';
import 'get_pages_projects_result_deployment_configs_production_vectorize_bindings.dart';

class GetPagesProjectsResultDeploymentConfigsProduction {
  /// Constellation bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionAiBindings>> aiBindings;
  /// Whether to always use the latest compatibility date for Pages Functions.
  final pulumi.Input<bool> alwaysUseLatestCompatibilityDate;
  /// Analytics Engine bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets>> analyticsEngineDatasets;
  /// Browser bindings used for Pages Functions.
  final pulumi.Input<Map<String, Map<String, dynamic>>> browsers;
  /// The major version of the build image to use for Pages Functions.
  final pulumi.Input<int> buildImageMajorVersion;
  /// Compatibility date used for Pages Functions.
  final pulumi.Input<String> compatibilityDate;
  /// Compatibility flags used for Pages Functions.
  final pulumi.Input<List<String>> compatibilityFlags;
  /// D1 databases used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionD1Databases>> d1Databases;
  /// Durable Object namespaces used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces>> durableObjectNamespaces;
  /// Environment variables used for builds and Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionEnvVars>> envVars;
  /// Whether to fail open when the deployment config cannot be applied.
  final pulumi.Input<bool> failOpen;
  /// Hyperdrive bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings>> hyperdriveBindings;
  /// KV namespaces used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces>> kvNamespaces;
  /// Limits for Pages Functions.
  final pulumi.Input<GetPagesProjectsResultDeploymentConfigsProductionLimits> limits;
  /// mTLS bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates>> mtlsCertificates;
  /// Placement setting used for Pages Functions.
  final pulumi.Input<GetPagesProjectsResultDeploymentConfigsProductionPlacement> placement;
  /// Queue Producer bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionQueueProducers>> queueProducers;
  /// R2 buckets used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionR2Buckets>> r2Buckets;
  /// Services used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionServices>> services;
  /// The usage model for Pages Functions.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String> usageModel;
  /// Vectorize bindings used for Pages Functions.
  final pulumi.Input<Map<String, GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings>> vectorizeBindings;
  /// Hash of the Wrangler configuration used for the deployment.
  final pulumi.Input<String> wranglerConfigHash;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProduction].
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
  const GetPagesProjectsResultDeploymentConfigsProduction({
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
      'aiBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionAiBindings>, Map<String, Map<String, dynamic>>>(aiBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionAiBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alwaysUseLatestCompatibilityDate': alwaysUseLatestCompatibilityDate,
      'analyticsEngineDatasets': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets>, Map<String, Map<String, dynamic>>>(analyticsEngineDatasets, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'browsers': browsers,
      'buildImageMajorVersion': buildImageMajorVersion,
      'compatibilityDate': compatibilityDate,
      'compatibilityFlags': compatibilityFlags,
      'd1Databases': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionD1Databases>, Map<String, Map<String, dynamic>>>(d1Databases, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionD1Databases, Map<String, dynamic>>(value, (value) => value.toMap())),
      'durableObjectNamespaces': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces>, Map<String, Map<String, dynamic>>>(durableObjectNamespaces, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envVars': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionEnvVars>, Map<String, Map<String, dynamic>>>(envVars, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionEnvVars, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failOpen': failOpen,
      'hyperdriveBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings>, Map<String, Map<String, dynamic>>>(hyperdriveBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kvNamespaces': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces>, Map<String, Map<String, dynamic>>>(kvNamespaces, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': pulumi.Input.mapInputValue<GetPagesProjectsResultDeploymentConfigsProductionLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'mtlsCertificates': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates>, Map<String, Map<String, dynamic>>>(mtlsCertificates, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': pulumi.Input.mapInputValue<GetPagesProjectsResultDeploymentConfigsProductionPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'queueProducers': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionQueueProducers>, Map<String, Map<String, dynamic>>>(queueProducers, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionQueueProducers, Map<String, dynamic>>(value, (value) => value.toMap())),
      'r2Buckets': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionR2Buckets>, Map<String, Map<String, dynamic>>>(r2Buckets, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionR2Buckets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'services': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionServices>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionServices, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageModel': usageModel,
      'vectorizeBindings': pulumi.Input.mapInputValue<Map<String, GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings>, Map<String, Map<String, dynamic>>>(vectorizeBindings, (value) => pulumi.Input.encodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wranglerConfigHash': wranglerConfigHash,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProduction.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProduction(
      aiBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionAiBindings>(map['aiBindings']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionAiBindings.fromMap((value as Map).cast<String, dynamic>()))),
      alwaysUseLatestCompatibilityDate: pulumi.Input.fromValue(map['alwaysUseLatestCompatibilityDate'] as bool),
      analyticsEngineDatasets: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets>(map['analyticsEngineDatasets']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionAnalyticsEngineDatasets.fromMap((value as Map).cast<String, dynamic>()))),
      browsers: pulumi.Input.fromValue((map['browsers'] as Map).cast<String, Map<String, dynamic>>()),
      buildImageMajorVersion: pulumi.Input.fromValue((map['buildImageMajorVersion'] as num).toInt()),
      compatibilityDate: pulumi.Input.fromValue(map['compatibilityDate'] as String),
      compatibilityFlags: pulumi.Input.fromValue((map['compatibilityFlags'] as List).cast<String>()),
      d1Databases: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionD1Databases>(map['d1Databases']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionD1Databases.fromMap((value as Map).cast<String, dynamic>()))),
      durableObjectNamespaces: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces>(map['durableObjectNamespaces']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionDurableObjectNamespaces.fromMap((value as Map).cast<String, dynamic>()))),
      envVars: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionEnvVars>(map['envVars']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionEnvVars.fromMap((value as Map).cast<String, dynamic>()))),
      failOpen: pulumi.Input.fromValue(map['failOpen'] as bool),
      hyperdriveBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings>(map['hyperdriveBindings']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings.fromMap((value as Map).cast<String, dynamic>()))),
      kvNamespaces: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces>(map['kvNamespaces']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces.fromMap((value as Map).cast<String, dynamic>()))),
      limits: pulumi.Input.fromValue(GetPagesProjectsResultDeploymentConfigsProductionLimits.fromMap((map['limits']! as Map).cast<String, dynamic>())),
      mtlsCertificates: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates>(map['mtlsCertificates']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates.fromMap((value as Map).cast<String, dynamic>()))),
      placement: pulumi.Input.fromValue(GetPagesProjectsResultDeploymentConfigsProductionPlacement.fromMap((map['placement']! as Map).cast<String, dynamic>())),
      queueProducers: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionQueueProducers>(map['queueProducers']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionQueueProducers.fromMap((value as Map).cast<String, dynamic>()))),
      r2Buckets: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionR2Buckets>(map['r2Buckets']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionR2Buckets.fromMap((value as Map).cast<String, dynamic>()))),
      services: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionServices>(map['services']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionServices.fromMap((value as Map).cast<String, dynamic>()))),
      usageModel: pulumi.Input.fromValue(map['usageModel'] as String),
      vectorizeBindings: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings>(map['vectorizeBindings']!, (value) => GetPagesProjectsResultDeploymentConfigsProductionVectorizeBindings.fromMap((value as Map).cast<String, dynamic>()))),
      wranglerConfigHash: pulumi.Input.fromValue(map['wranglerConfigHash'] as String),
    );
  }
}
