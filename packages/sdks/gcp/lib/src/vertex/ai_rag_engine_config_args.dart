// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_engine_config_rag_managed_db_config.dart';

/// {@template pulumi_vertex_ai_rag_engine_config_ai_rag_engine_config_args_doc}
/// The set of arguments for AiRagEngineConfig.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_rag_engine_config_ai_rag_engine_config_args_doc}
class AiRagEngineConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Required. The config of the RagManagedDb used by RagEngine.
  /// Structure is documented below.
  final pulumi.Input<AiRagEngineConfigRagManagedDbConfig> ragManagedDbConfig;
  /// The region of the RagEngineConfig. eg us-central1
  final pulumi.Input<String?>? region;

  /// Creates a new [AiRagEngineConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  /// [ragManagedDbConfig] Required. The config of the RagManagedDb used by RagEngine.
  /// [region] The region of the RagEngineConfig. eg us-central1
  const AiRagEngineConfigArgs({
    this.deletionPolicy,
    this.project,
    required this.ragManagedDbConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
      'ragManagedDbConfig': pulumi.Input.mapInputValue<AiRagEngineConfigRagManagedDbConfig, Map<String, dynamic>>(ragManagedDbConfig, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory AiRagEngineConfigArgs.fromMap(Map<String, dynamic> map) {
    return AiRagEngineConfigArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ragManagedDbConfig: pulumi.Input.fromValue(AiRagEngineConfigRagManagedDbConfig.fromMap((map['ragManagedDbConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
