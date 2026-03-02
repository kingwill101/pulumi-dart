// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxGenerativeSettingsKnowledgeConnectorSettings {
  /// Name of the virtual agent. Used for LLM prompt. Can be left empty.
  final pulumi.Input<String>? agent;
  /// Identity of the agent, e.g. "virtual agent", "AI assistant".
  final pulumi.Input<String>? agentIdentity;
  /// Agent scope, e.g. "Example company website", "internal Example company website for employees", "manual of car owner".
  final pulumi.Input<String>? agentScope;
  /// Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  final pulumi.Input<String>? business;
  /// Company description, used for LLM prompt, e.g. "a family company selling freshly roasted coffee beans".``
  final pulumi.Input<String>? businessDescription;
  /// Whether to disable fallback to Data Store search results (in case the LLM couldn't pick a proper answer). Per default the feature is enabled.
  final pulumi.Input<bool>? disableDataStoreFallback;

  /// Creates a new [CxGenerativeSettingsKnowledgeConnectorSettings].
  /// [agent] Name of the virtual agent. Used for LLM prompt. Can be left empty.
  /// [agentIdentity] Identity of the agent, e.g. "virtual agent", "AI assistant".
  /// [agentScope] Agent scope, e.g. "Example company website", "internal Example company website for employees", "manual of car owner".
  /// [business] Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  /// [businessDescription] Company description, used for LLM prompt, e.g. "a family company selling freshly roasted coffee beans".``
  /// [disableDataStoreFallback] Whether to disable fallback to Data Store search results (in case the LLM couldn't pick a proper answer). Per default the feature is enabled.
  CxGenerativeSettingsKnowledgeConnectorSettings({
    this.agent,
    this.agentIdentity,
    this.agentScope,
    this.business,
    this.businessDescription,
    this.disableDataStoreFallback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?agent,
      'agentIdentity': ?agentIdentity,
      'agentScope': ?agentScope,
      'business': ?business,
      'businessDescription': ?businessDescription,
      'disableDataStoreFallback': ?disableDataStoreFallback,
    };
  }

  factory CxGenerativeSettingsKnowledgeConnectorSettings.fromMap(Map<String, dynamic> map) {
    return CxGenerativeSettingsKnowledgeConnectorSettings(
      agent: map['agent'] == null ? null : (map['agent']! as String).input(),
      agentIdentity: map['agentIdentity'] == null ? null : (map['agentIdentity']! as String).input(),
      agentScope: map['agentScope'] == null ? null : (map['agentScope']! as String).input(),
      business: map['business'] == null ? null : (map['business']! as String).input(),
      businessDescription: map['businessDescription'] == null ? null : (map['businessDescription']! as String).input(),
      disableDataStoreFallback: map['disableDataStoreFallback'] == null ? null : (map['disableDataStoreFallback']! as bool).input(),
    );
  }
}

