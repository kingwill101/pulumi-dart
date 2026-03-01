// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase {
  /// Whether the knowledge base is deleted
  final bool isDeleted;
  /// Name of the knowledge base
  final String name;
  /// Knowledge base UUID
  final String uuid;

  /// Creates a new [GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase].
  /// [isDeleted] Whether the knowledge base is deleted
  /// [name] Name of the knowledge base
  /// [uuid] Knowledge base UUID
  GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase({
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

  factory GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsAgentVersionAttachedKnowledgeBase(
      isDeleted: map['isDeleted'] as bool,
      name: map['name'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

