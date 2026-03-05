// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_versions_agent_version_attached_child_agent.dart';
import 'get_genai_agent_versions_agent_version_attached_function.dart';
import 'get_genai_agent_versions_agent_version_attached_guardrail.dart';
import 'get_genai_agent_versions_agent_version_attached_knowledge_base.dart';

class GetGenaiAgentVersionsAgentVersion {
  /// ID of the Agent to retrieve versions for
  final pulumi.Input<String> agentUuid;
  /// List of child agents attached to this version
  final pulumi.Input<List<GetGenaiAgentVersionsAgentVersionAttachedChildAgent>> attachedChildAgents;
  /// List of functions attached to this version
  final pulumi.Input<List<GetGenaiAgentVersionsAgentVersionAttachedFunction>> attachedFunctions;
  /// List of guardrails attached to this version
  final pulumi.Input<List<GetGenaiAgentVersionsAgentVersionAttachedGuardrail>> attachedGuardrails;
  /// List of Knowledge Bases agent versions
  final pulumi.Input<List<GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase>> attachedKnowledgeBases;
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

  /// Creates a new [GetGenaiAgentVersionsAgentVersion].
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
  GetGenaiAgentVersionsAgentVersion({
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
      'attachedChildAgents': pulumi.Input.mapInputValue<List<GetGenaiAgentVersionsAgentVersionAttachedChildAgent>, List<Map<String, dynamic>>>(attachedChildAgents, (value) => pulumi.Input.encodeList<GetGenaiAgentVersionsAgentVersionAttachedChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedFunctions': pulumi.Input.mapInputValue<List<GetGenaiAgentVersionsAgentVersionAttachedFunction>, List<Map<String, dynamic>>>(attachedFunctions, (value) => pulumi.Input.encodeList<GetGenaiAgentVersionsAgentVersionAttachedFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedGuardrails': pulumi.Input.mapInputValue<List<GetGenaiAgentVersionsAgentVersionAttachedGuardrail>, List<Map<String, dynamic>>>(attachedGuardrails, (value) => pulumi.Input.encodeList<GetGenaiAgentVersionsAgentVersionAttachedGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'attachedKnowledgeBases': pulumi.Input.mapInputValue<List<GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase>, List<Map<String, dynamic>>>(attachedKnowledgeBases, (value) => pulumi.Input.encodeList<GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory GetGenaiAgentVersionsAgentVersion.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsAgentVersion(
      agentUuid: pulumi.Input.fromValue(map['agentUuid'] as String),
      attachedChildAgents: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentVersionsAgentVersionAttachedChildAgent>(map['attachedChildAgents']!, (value) => GetGenaiAgentVersionsAgentVersionAttachedChildAgent.fromMap((value as Map).cast<String, dynamic>()))),
      attachedFunctions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentVersionsAgentVersionAttachedFunction>(map['attachedFunctions']!, (value) => GetGenaiAgentVersionsAgentVersionAttachedFunction.fromMap((value as Map).cast<String, dynamic>()))),
      attachedGuardrails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentVersionsAgentVersionAttachedGuardrail>(map['attachedGuardrails']!, (value) => GetGenaiAgentVersionsAgentVersionAttachedGuardrail.fromMap((value as Map).cast<String, dynamic>()))),
      attachedKnowledgeBases: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase>(map['attachedKnowledgeBases']!, (value) => GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))),
      canRollback: pulumi.Input.fromValue(map['canRollback'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdByEmail: pulumi.Input.fromValue(map['createdByEmail'] as String),
      currentlyApplied: pulumi.Input.fromValue(map['currentlyApplied'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instruction: pulumi.Input.fromValue(map['instruction'] as String),
      k: pulumi.Input.fromValue(map['k'] as int),
      maxTokens: pulumi.Input.fromValue(map['maxTokens'] as int),
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      provideCitations: pulumi.Input.fromValue(map['provideCitations'] as bool),
      retrievalMethod: pulumi.Input.fromValue(map['retrievalMethod'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      temperature: pulumi.Input.fromValue(map['temperature'] as double),
      topP: pulumi.Input.fromValue(map['topP'] as double),
      triggerAction: pulumi.Input.fromValue(map['triggerAction'] as String),
      versionHash: pulumi.Input.fromValue(map['versionHash'] as String),
    );
  }
}

