// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_engine_config_rag_managed_db_config.dart';

/// Input properties used for looking up and filtering AiRagEngineConfig resources.
class AiRagEngineConfigState {
  /// The resource name of the Dataset. This value is set by Google.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. The config of the RagManagedDb used by RagEngine.
  /// Structure is documented below.
  final pulumi.Input<AiRagEngineConfigRagManagedDbConfig>? ragManagedDbConfig;
  /// The region of the RagEngineConfig. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiRagEngineConfigState].
  /// [name] The resource name of the Dataset. This value is set by Google.
  /// [project] The ID of the project in which the resource belongs.
  /// [ragManagedDbConfig] Required. The config of the RagManagedDb used by RagEngine.
  /// [region] The region of the RagEngineConfig. eg us-central1
  const AiRagEngineConfigState({
    this.name,
    this.project,
    this.ragManagedDbConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'ragManagedDbConfig': ?pulumi.Input.mapOptionalInputValue<AiRagEngineConfigRagManagedDbConfig, Map<String, dynamic>>(ragManagedDbConfig, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory AiRagEngineConfigState.fromMap(Map<String, dynamic> map) {
    return AiRagEngineConfigState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ragManagedDbConfig: (() { final guardedValue = map['ragManagedDbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagEngineConfigRagManagedDbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

