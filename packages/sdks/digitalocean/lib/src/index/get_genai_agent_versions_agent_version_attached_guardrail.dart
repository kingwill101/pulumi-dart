// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentVersionsAgentVersionAttachedGuardrail {
  /// Whether the guardrail is deleted
  final pulumi.Input<bool> isDeleted;
  /// Name of the guardrail
  final pulumi.Input<String> name;
  /// Guardrail priority
  final pulumi.Input<int> priority;
  /// Guardrail UUID
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGenaiAgentVersionsAgentVersionAttachedGuardrail].
  /// [isDeleted] Whether the guardrail is deleted
  /// [name] Name of the guardrail
  /// [priority] Guardrail priority
  /// [uuid] Guardrail UUID
  const GetGenaiAgentVersionsAgentVersionAttachedGuardrail({
    required this.isDeleted,
    required this.name,
    required this.priority,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDeleted': isDeleted,
      'name': name,
      'priority': priority,
      'uuid': uuid,
    };
  }

  factory GetGenaiAgentVersionsAgentVersionAttachedGuardrail.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsAgentVersionAttachedGuardrail(
      isDeleted: pulumi.Input.fromValue(map['isDeleted'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
