// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPageRule.
class GetPageRuleResult {
  /// The timestamp of when the Page Rule was created.
  final String? createdOn;
  /// Identifier.
  final String? id;
  /// The timestamp of when the Page Rule was last modified.
  final String? modifiedOn;
  /// Identifier.
  final String? pageruleId;
  /// The priority of the rule, used to define which Page Rule is processed
  /// over another. A higher number indicates a higher priority. For example,
  /// if you have a catch-all Page Rule (rule A: `/images/*`) but want a more
  /// specific Page Rule to take precedence (rule B: `/images/special/*`),
  /// specify a higher priority for rule B so it overrides rule A.
  final int? priority;
  /// The status of the Page Rule.
  /// Available values: "active", "disabled".
  final String? status;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetPageRuleResult].
  /// [createdOn] The timestamp of when the Page Rule was created.
  /// [id] Identifier.
  /// [modifiedOn] The timestamp of when the Page Rule was last modified.
  /// [pageruleId] Identifier.
  /// [priority] The priority of the rule, used to define which Page Rule is processed
  /// [status] The status of the Page Rule.
  /// [zoneId] Identifier.
  const GetPageRuleResult({
    this.createdOn,
    this.id,
    this.modifiedOn,
    this.pageruleId,
    this.priority,
    this.status,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'pageruleId': ?pageruleId,
      'priority': ?priority,
      'status': ?status,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageRuleResult.fromMap(Map<String, dynamic> map) {
    return GetPageRuleResult(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageruleId: (() { final guardedValue = map['pageruleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
