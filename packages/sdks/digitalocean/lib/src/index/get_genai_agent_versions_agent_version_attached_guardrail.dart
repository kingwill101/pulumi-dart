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
  GetGenaiAgentVersionsAgentVersionAttachedGuardrail({
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
      isDeleted: (map['isDeleted'] as bool).input(),
      name: (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      uuid: (map['uuid'] as String).input(),
    );
  }
}

