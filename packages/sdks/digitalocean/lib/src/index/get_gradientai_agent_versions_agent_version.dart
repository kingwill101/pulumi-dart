// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agent_versions_agent_version_attached_child_agent.dart';
import 'get_gradientai_agent_versions_agent_version_attached_function.dart';
import 'get_gradientai_agent_versions_agent_version_attached_guardrail.dart';
import 'get_gradientai_agent_versions_agent_version_attached_knowledge_base.dart';

class GetGradientaiAgentVersionsAgentVersion {
  /// ID of the Agent to retrieve versions for
  final pulumi.Input<String> agentUuid;
  /// List of child agents attached to this version
  final pulumi.Input<List<GetGradientaiAgentVersionsAgentVersionAttachedChildAgent>> attachedChildAgents;
  /// List of functions attached to this version
  final pulumi.Input<List<GetGradientaiAgentVersionsAgentVersionAttachedFunction>> attachedFunctions;
  /// List of guardrails attached to this version
  final pulumi.Input<List<GetGradientaiAgentVersionsAgentVersionAttachedGuardrail>> attachedGuardrails;
  /// List of Knowledge Bases agent versions
  final pulumi.Input<List<GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase>> attachedKnowledgeBases;
  /// Indicates if the version can be rolled back
  final pulumi.Input<bool> canRollback;
  /// Timestamp when the Agent Version was created
  final pulumi.Input<String> createdAt;
  /// Email of the user who created this version
  final pulumi.Input<String> createdByEmail;
  /// Indicates if this version is currently applied configuration
  final pulumi.Input<bool> currentlyApplied;
  /// Description of the Agent Version
  final pulumi.Input<String> description;
  /// Id of the Agent Version
  final pulumi.Input<String> id;
  /// Instruction for the Agent Version
  final pulumi.Input<String> instruction;
  /// K value for the Agent Version
  final pulumi.Input<int> k;
  /// Maximum tokens allowed for the Agent
  final pulumi.Input<int> maxTokens;
  /// Name of model associated to the agent version
  final pulumi.Input<String> modelName;
  /// Name of the Agent
  final pulumi.Input<String> name;
  /// Indicates if the should provide in-response citations
  final pulumi.Input<bool> provideCitations;
  /// Retrieval method used.
  /// - RETRIEVAL_METHOD_UNKNOWN: The retrieval method is unknown
  /// - RETRIEVAL_METHOD_REWRITE: The retrieval method is rewrite
  /// - RETRIEVAL_METHOD_STEP_BACK: The retrieval method is step back
  /// - RETRIEVAL_METHOD_SUB_QUERIES: The retrieval method is sub queries
  /// - RETRIEVAL_METHOD_NONE: The retrieval method is none.
  final pulumi.Input<String> retrievalMethod;
  /// List of Tags
  final pulumi.Input<List<String>> tags;
  /// Temperature setting for the Agent Version
  final pulumi.Input<double> temperature;
  /// Top P sampling parameter for the Agent Version
  final pulumi.Input<double> topP;
  /// Trigger action for the Agent Version
  final pulumi.Input<String> triggerAction;
  /// Hash of the Agent Version
  final pulumi.Input<String> versionHash;

  /// Creates a new [GetGradientaiAgentVersionsAgentVersion].
  /// [agentUuid] ID of the Agent to retrieve versions for
  /// [attachedChildAgents] List of child agents attached to this version
  /// [attachedFunctions] List of functions attached to this version
  /// [attachedGuardrails] List of guardrails attached to this version
  /// [attachedKnowledgeBases] List of Knowledge Bases agent versions
  /// [canRollback] Indicates if the version can be rolled back
  /// [createdAt] Timestamp when the Agent Version was created
  /// [createdByEmail] Email of the user who created this version
  /// [currentlyApplied] Indicates if this version is currently applied configuration
  /// [description] Description of the Agent Version
  /// [id] Id of the Agent Version
  /// [instruction] Instruction for the Agent Version
  /// [k] K value for the Agent Version
  /// [maxTokens] Maximum tokens allowed for the Agent
  /// [modelName] Name of model associated to the agent version
  /// [name] Name of the Agent
  /// [provideCitations] Indicates if the should provide in-response citations
  /// [retrievalMethod] Retrieval method used.
  /// [tags] List of Tags
  /// [temperature] Temperature setting for the Agent Version
  /// [topP] Top P sampling parameter for the Agent Version
  /// [triggerAction] Trigger action for the Agent Version
  /// [versionHash] Hash of the Agent Version
  GetGradientaiAgentVersionsAgentVersion({
    required this.agentUuid,
    required this.attachedChildAgents,
    required this.attachedFunctions,
    required this.attachedGuardrails,
    required this.attachedKnowledgeBases,
    required this.canRollback,
    required this.createdAt,
    required this.createdByEmail,
    required this.currentlyApplied,
    required this.description,
    required this.id,
    required this.instruction,
    required this.k,
    required this.maxTokens,
    required this.modelName,
    required this.name,
    required this.provideCitations,
    required this.retrievalMethod,
    required this.tags,
    required this.temperature,
    required this.topP,
    required this.triggerAction,
    required this.versionHash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUuid': agentUuid,
      'attachedChildAgents': pulumi.Input.mapInputValue<List<GetGradientaiAgentVersionsAgentVersionAttachedChildAgent>, List<Map<String, dynamic>>>(attachedChildAgents, (value) => pulumi.Input.encodeList<GetGradientaiAgentVersionsAgentVersionAttachedChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedFunctions': pulumi.Input.mapInputValue<List<GetGradientaiAgentVersionsAgentVersionAttachedFunction>, List<Map<String, dynamic>>>(attachedFunctions, (value) => pulumi.Input.encodeList<GetGradientaiAgentVersionsAgentVersionAttachedFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedGuardrails': pulumi.Input.mapInputValue<List<GetGradientaiAgentVersionsAgentVersionAttachedGuardrail>, List<Map<String, dynamic>>>(attachedGuardrails, (value) => pulumi.Input.encodeList<GetGradientaiAgentVersionsAgentVersionAttachedGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedKnowledgeBases': pulumi.Input.mapInputValue<List<GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase>, List<Map<String, dynamic>>>(attachedKnowledgeBases, (value) => pulumi.Input.encodeList<GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'canRollback': canRollback,
      'createdAt': createdAt,
      'createdByEmail': createdByEmail,
      'currentlyApplied': currentlyApplied,
      'description': description,
      'id': id,
      'instruction': instruction,
      'k': k,
      'maxTokens': maxTokens,
      'modelName': modelName,
      'name': name,
      'provideCitations': provideCitations,
      'retrievalMethod': retrievalMethod,
      'tags': tags,
      'temperature': temperature,
      'topP': topP,
      'triggerAction': triggerAction,
      'versionHash': versionHash,
    };
  }

  factory GetGradientaiAgentVersionsAgentVersion.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsAgentVersion(
      agentUuid: (map['agentUuid'] as String).input(),
      attachedChildAgents: (pulumi.Input.decodeList<GetGradientaiAgentVersionsAgentVersionAttachedChildAgent>(map['attachedChildAgents'], (value) => GetGradientaiAgentVersionsAgentVersionAttachedChildAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      attachedFunctions: (pulumi.Input.decodeList<GetGradientaiAgentVersionsAgentVersionAttachedFunction>(map['attachedFunctions'], (value) => GetGradientaiAgentVersionsAgentVersionAttachedFunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      attachedGuardrails: (pulumi.Input.decodeList<GetGradientaiAgentVersionsAgentVersionAttachedGuardrail>(map['attachedGuardrails'], (value) => GetGradientaiAgentVersionsAgentVersionAttachedGuardrail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      attachedKnowledgeBases: (pulumi.Input.decodeList<GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase>(map['attachedKnowledgeBases'], (value) => GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      canRollback: (map['canRollback'] as bool).input(),
      createdAt: (map['createdAt'] as String).input(),
      createdByEmail: (map['createdByEmail'] as String).input(),
      currentlyApplied: (map['currentlyApplied'] as bool).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      instruction: (map['instruction'] as String).input(),
      k: (map['k'] as int).input(),
      maxTokens: (map['maxTokens'] as int).input(),
      modelName: (map['modelName'] as String).input(),
      name: (map['name'] as String).input(),
      provideCitations: (map['provideCitations'] as bool).input(),
      retrievalMethod: (map['retrievalMethod'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      temperature: (map['temperature'] as double).input(),
      topP: (map['topP'] as double).input(),
      triggerAction: (map['triggerAction'] as String).input(),
      versionHash: (map['versionHash'] as String).input(),
    );
  }
}

