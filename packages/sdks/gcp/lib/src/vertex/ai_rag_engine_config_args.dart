// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_engine_config_rag_managed_db_config.dart';

/// {@template pulumi_vertex_ai_rag_engine_config_ai_rag_engine_config_args_doc}
/// The set of arguments for AiRagEngineConfig.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_rag_engine_config_ai_rag_engine_config_args_doc}
class AiRagEngineConfigArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. The config of the RagManagedDb used by RagEngine.
  /// Structure is documented below.
  final pulumi.Input<AiRagEngineConfigRagManagedDbConfig> ragManagedDbConfig;
  /// The region of the RagEngineConfig. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiRagEngineConfigArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [ragManagedDbConfig] Required. The config of the RagManagedDb used by RagEngine.
  /// [region] The region of the RagEngineConfig. eg us-central1
  const AiRagEngineConfigArgs({
    this.project,
    required this.ragManagedDbConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'ragManagedDbConfig': pulumi.Input.mapInputValue<AiRagEngineConfigRagManagedDbConfig, Map<String, dynamic>>(ragManagedDbConfig, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory AiRagEngineConfigArgs.fromMap(Map<String, dynamic> map) {
    return AiRagEngineConfigArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ragManagedDbConfig: pulumi.Input.fromValue(AiRagEngineConfigRagManagedDbConfig.fromMap((map['ragManagedDbConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

