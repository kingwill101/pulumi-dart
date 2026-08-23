// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_protocol.dart';
import 'get_agent_skill.dart';

/// Result data returned by getAgent.
class GetAgentResult {
  final String agentId;
  /// Attributes of the Agent.
  final Map<String, String> attributes;
  /// Create time.
  final String createTime;
  /// Obtained from the A2A Agent Card. The description of the Agent.
  final String description;
  /// Obtained from the A2A Agent Card. The display name of the Agent.
  final String displayName;
  final String? filter;
  /// The OSS Agent framework used to develop the Agent. Currently supported values: "google-adk", "langchain", "langgraph", "ag2", "llama-index", "custom".
  final String framework;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String project;
  /// The connection details for the Agent.
  final List<GetAgentProtocol> protocols;
  /// Obtained from the A2A Agent Card. Skills represent the ability of an Agent. It is largely a descriptive concept but represents a more focused set of behaviors that the Agent is likely to succeed at.
  final List<GetAgentSkill> skills;
  /// Update time.
  final String updateTime;
  /// The URN of the Agent.
  final String urn;
  /// Obtained from the A2A Agent Card. Contains the version of the Agent.
  final String version;

  /// Creates a new [GetAgentResult].
  /// [agentId] Required.
  /// [attributes] Attributes of the Agent.
  /// [createTime] Create time.
  /// [description] Obtained from the A2A Agent Card. The description of the Agent.
  /// [displayName] Obtained from the A2A Agent Card. The display name of the Agent.
  /// [filter] Optional.
  /// [framework] The OSS Agent framework used to develop the Agent. Currently supported values: "google-adk", "langchain", "langgraph", "ag2", "llama-index", "custom".
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Required.
  /// [protocols] The connection details for the Agent.
  /// [skills] Obtained from the A2A Agent Card. Skills represent the ability of an Agent. It is largely a descriptive concept but represents a more focused set of behaviors that the Agent is likely to succeed at.
  /// [updateTime] Update time.
  /// [urn] The URN of the Agent.
  /// [version] Obtained from the A2A Agent Card. Contains the version of the Agent.
  const GetAgentResult({
    required this.agentId,
    required this.attributes,
    required this.createTime,
    required this.description,
    required this.displayName,
    this.filter,
    required this.framework,
    required this.id,
    required this.location,
    required this.project,
    required this.protocols,
    required this.skills,
    required this.updateTime,
    required this.urn,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'attributes': attributes,
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'filter': ?filter,
      'framework': framework,
      'id': id,
      'location': location,
      'project': project,
      'protocols': pulumi.Input.encodeList<GetAgentProtocol, Map<String, dynamic>>(protocols, (value) => value.toMap()),
      'skills': pulumi.Input.encodeList<GetAgentSkill, Map<String, dynamic>>(skills, (value) => value.toMap()),
      'updateTime': updateTime,
      'urn': urn,
      'version': version,
    };
  }

  factory GetAgentResult.fromMap(Map<String, dynamic> map) {
    return GetAgentResult(
      agentId: map['agentId'] as String,
      attributes: (map['attributes'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      framework: map['framework'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] as String,
      protocols: pulumi.Input.decodeList<GetAgentProtocol>(map['protocols']!, (value) => GetAgentProtocol.fromMap((value as Map).cast<String, dynamic>())),
      skills: pulumi.Input.decodeList<GetAgentSkill>(map['skills']!, (value) => GetAgentSkill.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
      urn: map['urn'] as String,
      version: map['version'] as String,
    );
  }
}
