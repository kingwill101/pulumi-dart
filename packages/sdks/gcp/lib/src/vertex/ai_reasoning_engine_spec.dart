// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_build_spec.dart';
import 'ai_reasoning_engine_spec_container_spec.dart';
import 'ai_reasoning_engine_spec_deployment_spec.dart';
import 'ai_reasoning_engine_spec_package_spec.dart';
import 'ai_reasoning_engine_spec_source_code_spec.dart';

class AiReasoningEngineSpec {
  /// Optional. The A2A Agent Card for the agent (if available).
  final pulumi.Input<String>? agentCard;
  /// Optional. The OSS agent framework used to develop the agent.
  final pulumi.Input<String>? agentFramework;
  /// Optional. Configuration for building container image.
  final pulumi.Input<AiReasoningEngineSpecBuildSpec>? buildSpec;
  /// Optional. Declarations for object class methods in OpenAPI
  /// specification format.
  /// **Note**: When deploying via Terraform, this field must be populated manually.
  /// Otherwise, client SDKs (like `agent_engines.get()`) will not be able to discover the methods, and calls to the engine (or A2A integrations) will fail.
  /// Depending on the template/framework used (`agentFramework`), the required class methods and their parameters differ:
  /// **Warning**: The configuration snippets below are illustrative, may not be exhaustive, and could stop working over time. For the most up-to-date method lists and schemas, please consult the respective SDK source code:
  /// * For Google ADK: See [ADK Python SDK cli_deploy.py](https://github.com/google/adk-python/blob/68a780306e3bdd648a882ef34c0abf8e5148353e/src/google/adk/cli/cli_deploy.py#L109).
  /// * For Langchain: See [Vertex AI Python SDK langchain.py](https://github.com/googleapis/python-aiplatform/blob/c8a38a085931b01f4d6071f0ab7a64cb42851829/agentplatform/agent_engines/templates/langchain.py#L642-L717).
  final pulumi.Input<String>? classMethods;
  /// Deploy from a container image with a defined entrypoint and commands.
  final pulumi.Input<AiReasoningEngineSpecContainerSpec>? containerSpec;
  /// Optional. The specification of a Reasoning Engine deployment.
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpec>? deploymentSpec;
  /// The identity to use for the Reasoning Engine.
  final pulumi.Input<String>? effectiveIdentity;
  /// Optional. The resource name of the linked ExampleStore.
  final pulumi.Input<String>? exampleStore;
  /// Optional. The identity type to use for the Reasoning Engine.
  /// If not specified, the 'service_account' field will be used if set,
  /// otherwise the default Vertex AI Reasoning Engine Service Agent in the project will be used.
  /// Possible values:
  /// * 'SERVICE_ACCOUNT': Use a custom service account if the 'service_account' field is set, otherwise use the default Vertex AI Reasoning Engine Service Agent in the project.
  /// * 'AGENT_IDENTITY': Use Agent Identity. The 'service_account' field must not be set. Possible values: ["SERVICE_ACCOUNT", "AGENT_IDENTITY"]
  final pulumi.Input<String>? identityType;
  /// Optional. User provided package spec of the ReasoningEngine.
  /// Ignored when users directly specify a deployment image through
  /// deploymentSpec.first_party_image_override, but keeping the
  /// fieldBehavior to avoid introducing breaking changes.
  final pulumi.Input<AiReasoningEngineSpecPackageSpec>? packageSpec;
  /// Optional. The service account that the Reasoning Engine artifact runs
  /// as. It should have "roles/storage.objectViewer" for reading the user
  /// project's Cloud Storage and "roles/aiplatform.user" for using Vertex
  /// extensions. If not specified, the Vertex AI Reasoning Engine service
  /// Agent in the project will be used.
  final pulumi.Input<String>? serviceAccount;
  /// Specification for deploying from source code.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpec>? sourceCodeSpec;

  /// Creates a new [AiReasoningEngineSpec].
  /// [agentCard] Optional. The A2A Agent Card for the agent (if available).
  /// [agentFramework] Optional. The OSS agent framework used to develop the agent.
  /// [buildSpec] Optional. Configuration for building container image.
  /// [classMethods] Optional. Declarations for object class methods in OpenAPI
  /// [containerSpec] Deploy from a container image with a defined entrypoint and commands.
  /// [deploymentSpec] Optional. The specification of a Reasoning Engine deployment.
  /// [effectiveIdentity] The identity to use for the Reasoning Engine.
  /// [exampleStore] Optional. The resource name of the linked ExampleStore.
  /// [identityType] Optional. The identity type to use for the Reasoning Engine.
  /// [packageSpec] Optional. User provided package spec of the ReasoningEngine.
  /// [serviceAccount] Optional. The service account that the Reasoning Engine artifact runs
  /// [sourceCodeSpec] Specification for deploying from source code.
  const AiReasoningEngineSpec({
    this.agentCard,
    this.agentFramework,
    this.buildSpec,
    this.classMethods,
    this.containerSpec,
    this.deploymentSpec,
    this.effectiveIdentity,
    this.exampleStore,
    this.identityType,
    this.packageSpec,
    this.serviceAccount,
    this.sourceCodeSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCard': ?agentCard,
      'agentFramework': ?agentFramework,
      'buildSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecBuildSpec, Map<String, dynamic>>(buildSpec, (value) => value.toMap()),
      'classMethods': ?classMethods,
      'containerSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecContainerSpec, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'deploymentSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecDeploymentSpec, Map<String, dynamic>>(deploymentSpec, (value) => value.toMap()),
      'effectiveIdentity': ?effectiveIdentity,
      'exampleStore': ?exampleStore,
      'identityType': ?identityType,
      'packageSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecPackageSpec, Map<String, dynamic>>(packageSpec, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'sourceCodeSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecSourceCodeSpec, Map<String, dynamic>>(sourceCodeSpec, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpec(
      agentCard: (() { final guardedValue = map['agentCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentFramework: (() { final guardedValue = map['agentFramework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildSpec: (() { final guardedValue = map['buildSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecBuildSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      classMethods: (() { final guardedValue = map['classMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerSpec: (() { final guardedValue = map['containerSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecContainerSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentSpec: (() { final guardedValue = map['deploymentSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecDeploymentSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      effectiveIdentity: (() { final guardedValue = map['effectiveIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exampleStore: (() { final guardedValue = map['exampleStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageSpec: (() { final guardedValue = map['packageSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecPackageSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCodeSpec: (() { final guardedValue = map['sourceCodeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecSourceCodeSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
