// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentVersionsAgentVersionAttachedChildAgent {
  /// Name of the child agent
  final pulumi.Input<String> agentName;
  /// Child agent unique identifier
  final pulumi.Input<String> childAgentUuid;
  /// If case
  final pulumi.Input<String> ifCase;
  /// Child agent is deleted
  final pulumi.Input<bool> isDeleted;
  /// Route name
  final pulumi.Input<String> routeName;

  /// Creates a new [GetGradientaiAgentVersionsAgentVersionAttachedChildAgent].
  /// [agentName] Name of the child agent
  /// [childAgentUuid] Child agent unique identifier
  /// [ifCase] If case
  /// [isDeleted] Child agent is deleted
  /// [routeName] Route name
  GetGradientaiAgentVersionsAgentVersionAttachedChildAgent({
    required this.agentName,
    required this.childAgentUuid,
    required this.ifCase,
    required this.isDeleted,
    required this.routeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'childAgentUuid': childAgentUuid,
      'ifCase': ifCase,
      'isDeleted': isDeleted,
      'routeName': routeName,
    };
  }

  factory GetGradientaiAgentVersionsAgentVersionAttachedChildAgent.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsAgentVersionAttachedChildAgent(
      agentName: (map['agentName'] as String).input(),
      childAgentUuid: (map['childAgentUuid'] as String).input(),
      ifCase: (map['ifCase'] as String).input(),
      isDeleted: (map['isDeleted'] as bool).input(),
      routeName: (map['routeName'] as String).input(),
    );
  }
}

