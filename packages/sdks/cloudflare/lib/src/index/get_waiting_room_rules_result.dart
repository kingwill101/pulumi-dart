// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWaitingRoomRules.
class GetWaitingRoomRulesResult {
  /// The action to take when the expression matches.
  /// Available values: "bypass*waiting*room".
  final String? action;
  /// The description of the rule.
  final String? description;
  /// When set to true, the rule is enabled.
  final bool? enabled;
  /// Criteria defining when there is a match for the current rule.
  final String? expression;
  /// The ID of this resource.
  final String? id;
  final String? lastUpdated;
  /// The version of the rule.
  final String? version;
  final String? waitingRoomId;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetWaitingRoomRulesResult].
  /// [action] The action to take when the expression matches.
  /// [description] The description of the rule.
  /// [enabled] When set to true, the rule is enabled.
  /// [expression] Criteria defining when there is a match for the current rule.
  /// [id] The ID of this resource.
  /// [lastUpdated] Optional.
  /// [version] The version of the rule.
  /// [waitingRoomId] Optional.
  /// [zoneId] Identifier.
  const GetWaitingRoomRulesResult({
    this.action,
    this.description,
    this.enabled,
    this.expression,
    this.id,
    this.lastUpdated,
    this.version,
    this.waitingRoomId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'enabled': ?enabled,
      'expression': ?expression,
      'id': ?id,
      'lastUpdated': ?lastUpdated,
      'version': ?version,
      'waitingRoomId': ?waitingRoomId,
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomRulesResult.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomRulesResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      waitingRoomId: (() { final guardedValue = map['waitingRoomId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
