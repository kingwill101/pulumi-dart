// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsAgentAgentGuardrail {
  /// Agent UUID for the Guardrail
  final String? agentUuid;
  /// Created At timestamp for the Guardrail
  final String createdAt;
  /// Default response for the Guardrail
  final String? defaultResponse;
  /// Description of the Guardrail
  final String? description;
  /// Guardrail UUID
  final String? guardrailUuid;
  /// Indicates if the Guardrail is attached
  final bool isAttached;
  /// Indicates if the Guardrail is default
  final bool? isDefault;
  /// Name of Guardrail
  final String? name;
  /// Priority of the Guardrail
  final int? priority;
  /// Type of the Guardrail
  final String? type;
  /// Updated At timestamp for the Guardrail
  final String updatedAt;
  /// Guardrail UUID
  final String? uuid;

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
      agentUuid: map['agentUuid'] == null ? null : map['agentUuid'] as String,
      createdAt: map['createdAt'] as String,
      defaultResponse: map['defaultResponse'] == null ? null : map['defaultResponse'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      guardrailUuid: map['guardrailUuid'] == null ? null : map['guardrailUuid'] as String,
      isAttached: map['isAttached'] as bool,
      isDefault: map['isDefault'] == null ? null : map['isDefault'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      updatedAt: map['updatedAt'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

