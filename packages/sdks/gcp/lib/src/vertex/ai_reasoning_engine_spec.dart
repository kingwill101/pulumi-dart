// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_deployment_spec.dart';
import 'ai_reasoning_engine_spec_package_spec.dart';
import 'ai_reasoning_engine_spec_source_code_spec.dart';

class AiReasoningEngineSpec {
  /// Optional. The OSS agent framework used to develop the agent.
  final pulumi.Input<String>? agentFramework;
  /// Optional. Declarations for object class methods in OpenAPI
  /// specification format.
  final pulumi.Input<String>? classMethods;
  /// Optional. The specification of a Reasoning Engine deployment.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpec>? deploymentSpec;
  /// Optional. User provided package spec of the ReasoningEngine.
  /// Ignored when users directly specify a deployment image through
  /// deploymentSpec.first_party_image_override, but keeping the
  /// field_behavior to avoid introducing breaking changes.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecPackageSpec>? packageSpec;
  /// Optional. The service account that the Reasoning Engine artifact runs
  /// as. It should have "roles/storage.objectViewer" for reading the user
  /// project's Cloud Storage and "roles/aiplatform.user" for using Vertex
  /// extensions. If not specified, the Vertex AI Reasoning Engine service
  /// Agent in the project will be used.
  final pulumi.Input<String>? serviceAccount;
  /// Specification for deploying from source code.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpec>? sourceCodeSpec;

  /// Creates a new [AiReasoningEngineSpec].
  /// [agentFramework] Optional. The OSS agent framework used to develop the agent.
  /// [classMethods] Optional. Declarations for object class methods in OpenAPI
  /// [deploymentSpec] Optional. The specification of a Reasoning Engine deployment.
  /// [packageSpec] Optional. User provided package spec of the ReasoningEngine.
  /// [serviceAccount] Optional. The service account that the Reasoning Engine artifact runs
  /// [sourceCodeSpec] Specification for deploying from source code.
  AiReasoningEngineSpec({
    this.agentFramework,
    this.classMethods,
    this.deploymentSpec,
    this.packageSpec,
    this.serviceAccount,
    this.sourceCodeSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentFramework': ?agentFramework,
      'classMethods': ?classMethods,
      'deploymentSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecDeploymentSpec, Map<String, dynamic>>(deploymentSpec, (value) => value.toMap()),
      'packageSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecPackageSpec, Map<String, dynamic>>(packageSpec, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'sourceCodeSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecSourceCodeSpec, Map<String, dynamic>>(sourceCodeSpec, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpec(
      agentFramework: map['agentFramework'] == null ? null : (map['agentFramework']! as String).input(),
      classMethods: map['classMethods'] == null ? null : (map['classMethods']! as String).input(),
      deploymentSpec: map['deploymentSpec'] == null ? null : (AiReasoningEngineSpecDeploymentSpec.fromMap((map['deploymentSpec']! as Map).cast<String, dynamic>())).input(),
      packageSpec: map['packageSpec'] == null ? null : (AiReasoningEngineSpecPackageSpec.fromMap((map['packageSpec']! as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      sourceCodeSpec: map['sourceCodeSpec'] == null ? null : (AiReasoningEngineSpecSourceCodeSpec.fromMap((map['sourceCodeSpec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

