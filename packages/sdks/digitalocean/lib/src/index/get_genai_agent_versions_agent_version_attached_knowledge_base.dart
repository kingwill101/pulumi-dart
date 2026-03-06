// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase {
  /// Whether the knowledge base is deleted
  final pulumi.Input<bool> isDeleted;
  /// Name of the knowledge base
  final pulumi.Input<String> name;
  /// Knowledge base UUID
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase].
  /// [isDeleted] Whether the knowledge base is deleted
  /// [name] Name of the knowledge base
  /// [uuid] Knowledge base UUID
  const GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase({
    required this.isDeleted,
    required this.name,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDeleted': isDeleted,
      'name': name,
      'uuid': uuid,
    };
  }

  factory GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase(
      isDeleted: pulumi.Input.fromValue(map['isDeleted'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}

