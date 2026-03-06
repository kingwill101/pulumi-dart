// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRule.
class GetRuleNetworksecurityV1beta1Result {
  /// Optional. CEL expression for matching on L7/application level criteria.
  final String applicationMatcher;
  /// Profile which tells what the primitive action should be.
  final String basicProfile;
  /// Time when the rule was created.
  final String createTime;
  /// Optional. Free-text description of the resource.
  final String description;
  /// Whether the rule is enforced.
  final bool enabled;
  /// Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule} rule should match the pattern: (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final String name;
  /// Priority of the rule. Lower number corresponds to higher precedence.
  final int priority;
  /// CEL expression for matching on session criteria.
  final String sessionMatcher;
  /// Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final bool tlsInspectionEnabled;
  /// Time when the rule was updated.
  final String updateTime;

  /// Creates a new [GetRuleNetworksecurityV1beta1Result].
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
  const GetRuleNetworksecurityV1beta1Result({
    required this.applicationMatcher,
    required this.basicProfile,
    required this.createTime,
    required this.description,
    required this.enabled,
    required this.name,
    required this.priority,
    required this.sessionMatcher,
    required this.tlsInspectionEnabled,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationMatcher': applicationMatcher,
      'basicProfile': basicProfile,
      'createTime': createTime,
      'description': description,
      'enabled': enabled,
      'name': name,
      'priority': priority,
      'sessionMatcher': sessionMatcher,
      'tlsInspectionEnabled': tlsInspectionEnabled,
      'updateTime': updateTime,
    };
  }

  factory GetRuleNetworksecurityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetRuleNetworksecurityV1beta1Result(
      applicationMatcher: map['applicationMatcher'] as String,
      basicProfile: map['basicProfile'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      name: map['name'] as String,
      priority: map['priority'] as int,
      sessionMatcher: map['sessionMatcher'] as String,
      tlsInspectionEnabled: map['tlsInspectionEnabled'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}

