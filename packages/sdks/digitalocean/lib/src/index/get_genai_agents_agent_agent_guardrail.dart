// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsAgentAgentGuardrail {
  /// Agent UUID for the Guardrail
  final pulumi.Input<String>? agentUuid;
  /// Created At timestamp for the Guardrail
  final pulumi.Input<String> createdAt;
  /// Default response for the Guardrail
  final pulumi.Input<String>? defaultResponse;
  /// Description of the Guardrail
  final pulumi.Input<String>? description;
  /// Guardrail UUID
  final pulumi.Input<String>? guardrailUuid;
  /// Indicates if the Guardrail is attached
  final pulumi.Input<bool> isAttached;
  /// Indicates if the Guardrail is default
  final pulumi.Input<bool>? isDefault;
  /// Name of Guardrail
  final pulumi.Input<String>? name;
  /// Priority of the Guardrail
  final pulumi.Input<int>? priority;
  /// Type of the Guardrail
  final pulumi.Input<String>? type;
  /// Updated At timestamp for the Guardrail
  final pulumi.Input<String> updatedAt;
  /// Guardrail UUID
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGenaiAgentsAgentAgentGuardrail].
  /// [agentUuid] Agent UUID for the Guardrail
  /// [createdAt] Created At timestamp for the Guardrail
  /// [defaultResponse] Default response for the Guardrail
  /// [description] Description of the Guardrail
  /// [guardrailUuid] Guardrail UUID
  /// [isAttached] Indicates if the Guardrail is attached
  /// [isDefault] Indicates if the Guardrail is default
  /// [name] Name of Guardrail
  /// [priority] Priority of the Guardrail
  /// [type] Type of the Guardrail
  /// [updatedAt] Updated At timestamp for the Guardrail
  /// [uuid] Guardrail UUID
  GetGenaiAgentsAgentAgentGuardrail({
    this.agentUuid,
    required this.createdAt,
    this.defaultResponse,
    this.description,
    this.guardrailUuid,
    required this.isAttached,
    this.isDefault,
    this.name,
    this.priority,
    this.type,
    required this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUuid': ?agentUuid,
      'createdAt': createdAt,
      'defaultResponse': ?defaultResponse,
      'description': ?description,
      'guardrailUuid': ?guardrailUuid,
      'isAttached': isAttached,
      'isDefault': ?isDefault,
      'name': ?name,
      'priority': ?priority,
      'type': ?type,
      'updatedAt': updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GetGenaiAgentsAgentAgentGuardrail.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentAgentGuardrail(
      agentUuid: (() { final guardedValue = map['agentUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      defaultResponse: (() { final guardedValue = map['defaultResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrailUuid: (() { final guardedValue = map['guardrailUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAttached: pulumi.Input.fromValue(map['isAttached'] as bool),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

