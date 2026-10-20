// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRule.
class GetRuleResult {
  /// Optional. CEL expression for matching on L7/application level criteria.
  final String? applicationMatcher;
  /// Profile which tells what the primitive action should be.
  final String? basicProfile;
  /// Time when the rule was created.
  final String? createTime;
  /// Optional. Free-text description of the resource.
  final String? description;
  /// Whether the rule is enforced.
  final bool? enabled;
  /// Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule} rule should match the pattern: (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final String? name;
  /// Priority of the rule. Lower number corresponds to higher precedence.
  final int? priority;
  /// CEL expression for matching on session criteria.
  final String? sessionMatcher;
  /// Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final bool? tlsInspectionEnabled;
  /// Time when the rule was updated.
  final String? updateTime;

  /// Creates a new [GetRuleResult].
  /// [applicationMatcher] Optional. CEL expression for matching on L7/application level criteria.
  /// [basicProfile] Profile which tells what the primitive action should be.
  /// [createTime] Time when the rule was created.
  /// [description] Optional. Free-text description of the resource.
  /// [enabled] Whether the rule is enforced.
  /// [name] Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule} rule should match the pattern: (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [priority] Priority of the rule. Lower number corresponds to higher precedence.
  /// [sessionMatcher] CEL expression for matching on session criteria.
  /// [tlsInspectionEnabled] Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  /// [updateTime] Time when the rule was updated.
  const GetRuleResult({
    this.applicationMatcher,
    this.basicProfile,
    this.createTime,
    this.description,
    this.enabled,
    this.name,
    this.priority,
    this.sessionMatcher,
    this.tlsInspectionEnabled,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationMatcher': ?applicationMatcher,
      'basicProfile': ?basicProfile,
      'createTime': ?createTime,
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'priority': ?priority,
      'sessionMatcher': ?sessionMatcher,
      'tlsInspectionEnabled': ?tlsInspectionEnabled,
      'updateTime': ?updateTime,
    };
  }

  factory GetRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRuleResult(
      applicationMatcher: (() { final guardedValue = map['applicationMatcher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      basicProfile: (() { final guardedValue = map['basicProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      sessionMatcher: (() { final guardedValue = map['sessionMatcher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tlsInspectionEnabled: (() { final guardedValue = map['tlsInspectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
