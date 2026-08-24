// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_deployment_configs_production_ai_bindings.dart';
import 'pages_project_deployment_configs_production_analytics_engine_datasets.dart';
import 'pages_project_deployment_configs_production_d1_databases.dart';
import 'pages_project_deployment_configs_production_durable_object_namespaces.dart';
import 'pages_project_deployment_configs_production_env_vars.dart';
import 'pages_project_deployment_configs_production_hyperdrive_bindings.dart';
import 'pages_project_deployment_configs_production_kv_namespaces.dart';
import 'pages_project_deployment_configs_production_limits.dart';
import 'pages_project_deployment_configs_production_mtls_certificates.dart';
import 'pages_project_deployment_configs_production_placement.dart';
import 'pages_project_deployment_configs_production_queue_producers.dart';
import 'pages_project_deployment_configs_production_r2_buckets.dart';
import 'pages_project_deployment_configs_production_services.dart';
import 'pages_project_deployment_configs_production_vectorize_bindings.dart';

class PagesProjectDeploymentConfigsProduction {
  /// Constellation bindings used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionAiBindings>?>? aiBindings;
  /// Whether to always use the latest compatibility date for Pages Functions.
  final pulumi.Input<bool?>? alwaysUseLatestCompatibilityDate;
  /// Analytics Engine bindings used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets>?>? analyticsEngineDatasets;
  /// Browser bindings used for Pages Functions.
  final pulumi.Input<Map<String, Map<String, dynamic>>?>? browsers;
  /// The major version of the build image to use for Pages Functions.
  final pulumi.Input<int?>? buildImageMajorVersion;
  /// Compatibility date used for Pages Functions.
  final pulumi.Input<String?>? compatibilityDate;
  /// Compatibility flags used for Pages Functions.
  final pulumi.Input<List<String>?>? compatibilityFlags;
  /// D1 databases used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionD1Databases>?>? d1Databases;
  /// Durable Object namespaces used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionDurableObjectNamespaces>?>? durableObjectNamespaces;
  /// Environment variables used for builds and Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionEnvVars>?>? envVars;
  /// Whether to fail open when the deployment config cannot be applied.
  final pulumi.Input<bool?>? failOpen;
  /// Hyperdrive bindings used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionHyperdriveBindings>?>? hyperdriveBindings;
  /// KV namespaces used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionKvNamespaces>?>? kvNamespaces;
  /// Limits for Pages Functions.
  final pulumi.Input<PagesProjectDeploymentConfigsProductionLimits?>? limits;
  /// mTLS bindings used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionMtlsCertificates>?>? mtlsCertificates;
  /// Placement setting used for Pages Functions.
  final pulumi.Input<PagesProjectDeploymentConfigsProductionPlacement?>? placement;
  /// Queue Producer bindings used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionQueueProducers>?>? queueProducers;
  /// R2 buckets used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionR2Buckets>?>? r2Buckets;
  /// Services used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionServices>?>? services;
  /// The usage model for Pages Functions.
  /// Available values: "standard", "bundled", "unbound".
  final pulumi.Input<String?>? usageModel;
  /// Vectorize bindings used for Pages Functions.
  final pulumi.Input<Map<String, PagesProjectDeploymentConfigsProductionVectorizeBindings>?>? vectorizeBindings;
  /// Hash of the Wrangler configuration used for the deployment.
  final pulumi.Input<String?>? wranglerConfigHash;

  /// Creates a new [PagesProjectDeploymentConfigsProduction].
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
  const PagesProjectDeploymentConfigsProduction({
    this.aiBindings,
    this.alwaysUseLatestCompatibilityDate,
    this.analyticsEngineDatasets,
    this.browsers,
    this.buildImageMajorVersion,
    this.compatibilityDate,
    this.compatibilityFlags,
    this.d1Databases,
    this.durableObjectNamespaces,
    this.envVars,
    this.failOpen,
    this.hyperdriveBindings,
    this.kvNamespaces,
    this.limits,
    this.mtlsCertificates,
    this.placement,
    this.queueProducers,
    this.r2Buckets,
    this.services,
    this.usageModel,
    this.vectorizeBindings,
    this.wranglerConfigHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiBindings': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionAiBindings>, Map<String, Map<String, dynamic>>>(aiBindings, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionAiBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alwaysUseLatestCompatibilityDate': ?alwaysUseLatestCompatibilityDate,
      'analyticsEngineDatasets': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets>, Map<String, Map<String, dynamic>>>(analyticsEngineDatasets, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'browsers': ?browsers,
      'buildImageMajorVersion': ?buildImageMajorVersion,
      'compatibilityDate': ?compatibilityDate,
      'compatibilityFlags': ?compatibilityFlags,
      'd1Databases': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionD1Databases>, Map<String, Map<String, dynamic>>>(d1Databases, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionD1Databases, Map<String, dynamic>>(value, (value) => value.toMap())),
      'durableObjectNamespaces': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionDurableObjectNamespaces>, Map<String, Map<String, dynamic>>>(durableObjectNamespaces, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionDurableObjectNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envVars': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionEnvVars>, Map<String, Map<String, dynamic>>>(envVars, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionEnvVars, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failOpen': ?failOpen,
      'hyperdriveBindings': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionHyperdriveBindings>, Map<String, Map<String, dynamic>>>(hyperdriveBindings, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionHyperdriveBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kvNamespaces': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionKvNamespaces>, Map<String, Map<String, dynamic>>>(kvNamespaces, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionKvNamespaces, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?pulumi.Input.mapOptionalInputValue<PagesProjectDeploymentConfigsProductionLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'mtlsCertificates': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionMtlsCertificates>, Map<String, Map<String, dynamic>>>(mtlsCertificates, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionMtlsCertificates, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placement': ?pulumi.Input.mapOptionalInputValue<PagesProjectDeploymentConfigsProductionPlacement, Map<String, dynamic>>(placement, (value) => value.toMap()),
      'queueProducers': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionQueueProducers>, Map<String, Map<String, dynamic>>>(queueProducers, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionQueueProducers, Map<String, dynamic>>(value, (value) => value.toMap())),
      'r2Buckets': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionR2Buckets>, Map<String, Map<String, dynamic>>>(r2Buckets, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionR2Buckets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'services': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionServices>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionServices, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageModel': ?usageModel,
      'vectorizeBindings': ?pulumi.Input.mapOptionalInputValue<Map<String, PagesProjectDeploymentConfigsProductionVectorizeBindings>, Map<String, Map<String, dynamic>>>(vectorizeBindings, (value) => pulumi.Input.encodeMapValues<PagesProjectDeploymentConfigsProductionVectorizeBindings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wranglerConfigHash': ?wranglerConfigHash,
    };
  }

  factory PagesProjectDeploymentConfigsProduction.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProduction(
      aiBindings: (() { final guardedValue = map['aiBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionAiBindings>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionAiBindings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      alwaysUseLatestCompatibilityDate: (() { final guardedValue = map['alwaysUseLatestCompatibilityDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      analyticsEngineDatasets: (() { final guardedValue = map['analyticsEngineDatasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets.fromMap((value as Map).cast<String, dynamic>()))); })(),
      browsers: (() { final guardedValue = map['browsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, Map<String, dynamic>>()); })(),
      buildImageMajorVersion: (() { final guardedValue = map['buildImageMajorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      compatibilityDate: (() { final guardedValue = map['compatibilityDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compatibilityFlags: (() { final guardedValue = map['compatibilityFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      d1Databases: (() { final guardedValue = map['d1Databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionD1Databases>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionD1Databases.fromMap((value as Map).cast<String, dynamic>()))); })(),
      durableObjectNamespaces: (() { final guardedValue = map['durableObjectNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionDurableObjectNamespaces>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionDurableObjectNamespaces.fromMap((value as Map).cast<String, dynamic>()))); })(),
      envVars: (() { final guardedValue = map['envVars']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionEnvVars>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionEnvVars.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hyperdriveBindings: (() { final guardedValue = map['hyperdriveBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionHyperdriveBindings>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionHyperdriveBindings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kvNamespaces: (() { final guardedValue = map['kvNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionKvNamespaces>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionKvNamespaces.fromMap((value as Map).cast<String, dynamic>()))); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectDeploymentConfigsProductionLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mtlsCertificates: (() { final guardedValue = map['mtlsCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionMtlsCertificates>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionMtlsCertificates.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placement: (() { final guardedValue = map['placement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectDeploymentConfigsProductionPlacement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queueProducers: (() { final guardedValue = map['queueProducers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionQueueProducers>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionQueueProducers.fromMap((value as Map).cast<String, dynamic>()))); })(),
      r2Buckets: (() { final guardedValue = map['r2Buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionR2Buckets>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionR2Buckets.fromMap((value as Map).cast<String, dynamic>()))); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionServices>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionServices.fromMap((value as Map).cast<String, dynamic>()))); })(),
      usageModel: (() { final guardedValue = map['usageModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectorizeBindings: (() { final guardedValue = map['vectorizeBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PagesProjectDeploymentConfigsProductionVectorizeBindings>(guardedValue, (value) => PagesProjectDeploymentConfigsProductionVectorizeBindings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wranglerConfigHash: (() { final guardedValue = map['wranglerConfigHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
