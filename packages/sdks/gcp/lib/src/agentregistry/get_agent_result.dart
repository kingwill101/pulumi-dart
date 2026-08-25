// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_protocol.dart';
import 'get_agent_skill.dart';

/// Result data returned by getAgent.
class GetAgentResult {
  final String? agentId;
  /// Attributes of the Agent.
  final Map<String, String>? attributes;
  /// Create time.
  final String? createTime;
  /// Obtained from the A2A Agent Card. The description of the Agent.
  final String? description;
  /// Obtained from the A2A Agent Card. The display name of the Agent.
  final String? displayName;
  final String? filter;
  /// The OSS Agent framework used to develop the Agent. Currently supported values: "google-adk", "langchain", "langgraph", "ag2", "llama-index", "custom".
  final String? framework;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;
  /// The connection details for the Agent.
  final List<GetAgentProtocol>? protocols;
  /// Obtained from the A2A Agent Card. Skills represent the ability of an Agent. It is largely a descriptive concept but represents a more focused set of behaviors that the Agent is likely to succeed at.
  final List<GetAgentSkill>? skills;
  /// Update time.
  final String? updateTime;
  /// The URN of the Agent.
  final String? urn;
  /// Obtained from the A2A Agent Card. Contains the version of the Agent.
  final String? version;

  /// Creates a new [GetAgentResult].
  /// [agentId] Optional.
  /// [attributes] Attributes of the Agent.
  /// [createTime] Create time.
  /// [description] Obtained from the A2A Agent Card. The description of the Agent.
  /// [displayName] Obtained from the A2A Agent Card. The display name of the Agent.
  /// [filter] Optional.
  /// [framework] The OSS Agent framework used to develop the Agent. Currently supported values: "google-adk", "langchain", "langgraph", "ag2", "llama-index", "custom".
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [protocols] The connection details for the Agent.
  /// [skills] Obtained from the A2A Agent Card. Skills represent the ability of an Agent. It is largely a descriptive concept but represents a more focused set of behaviors that the Agent is likely to succeed at.
  /// [updateTime] Update time.
  /// [urn] The URN of the Agent.
  /// [version] Obtained from the A2A Agent Card. Contains the version of the Agent.
  const GetAgentResult({
    this.agentId,
    this.attributes,
    this.createTime,
    this.description,
    this.displayName,
    this.filter,
    this.framework,
    this.id,
    this.location,
    this.project,
    this.protocols,
    this.skills,
    this.updateTime,
    this.urn,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'attributes': ?attributes,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'filter': ?filter,
      'framework': ?framework,
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'protocols': ?(() { final guardedValue = protocols; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentProtocol, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'skills': ?(() { final guardedValue = skills; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentSkill, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
      'urn': ?urn,
      'version': ?version,
    };
  }

  factory GetAgentResult.fromMap(Map<String, dynamic> map) {
    return GetAgentResult(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      framework: (() { final guardedValue = map['framework']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentProtocol>(guardedValue, (value) => GetAgentProtocol.fromMap((value as Map).cast<String, dynamic>())); })(),
      skills: (() { final guardedValue = map['skills']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentSkill>(guardedValue, (value) => GetAgentSkill.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
