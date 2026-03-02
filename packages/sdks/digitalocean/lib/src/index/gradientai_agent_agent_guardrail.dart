// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiAgentAgentGuardrail {
  /// Agent UUID for the Guardrail
  final pulumi.Input<String>? agentUuid;
  /// Created At timestamp for the Guardrail
  final pulumi.Input<String>? createdAt;
  /// Default response for the Guardrail
  final pulumi.Input<String>? defaultResponse;
  /// Description of the Guardrail
  final pulumi.Input<String>? description;
  /// Guardrail UUID
  final pulumi.Input<String>? guardrailUuid;
  /// Indicates if the Guardrail is attached
  final pulumi.Input<bool>? isAttached;
  /// Indicates if the Guardrail is default
  final pulumi.Input<bool>? isDefault;
  /// Name of Guardrail
  final pulumi.Input<String>? name;
  /// Priority of the Guardrail
  final pulumi.Input<int>? priority;
  /// Type of the Guardrail
  final pulumi.Input<String>? type;
  /// Updated At timestamp for the Guardrail
  final pulumi.Input<String>? updatedAt;
  /// Guardrail UUID
  final pulumi.Input<String>? uuid;

  /// Creates a new [GradientaiAgentAgentGuardrail].
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
  GradientaiAgentAgentGuardrail({
    this.agentUuid,
    this.createdAt,
    this.defaultResponse,
    this.description,
    this.guardrailUuid,
    this.isAttached,
    this.isDefault,
    this.name,
    this.priority,
    this.type,
    this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUuid': ?agentUuid,
      'createdAt': ?createdAt,
      'defaultResponse': ?defaultResponse,
      'description': ?description,
      'guardrailUuid': ?guardrailUuid,
      'isAttached': ?isAttached,
      'isDefault': ?isDefault,
      'name': ?name,
      'priority': ?priority,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GradientaiAgentAgentGuardrail.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentAgentGuardrail(
      agentUuid: map['agentUuid'] == null ? null : (map['agentUuid'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      defaultResponse: map['defaultResponse'] == null ? null : (map['defaultResponse'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      guardrailUuid: map['guardrailUuid'] == null ? null : (map['guardrailUuid'] as String).input(),
      isAttached: map['isAttached'] == null ? null : (map['isAttached'] as bool).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

