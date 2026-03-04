// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewaySecurityPolicyRule resources.
class GatewaySecurityPolicyRuleState {
  /// CEL expression for matching on L7/application level criteria.
  final pulumi.Input<String>? applicationMatcher;

  /// Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// Possible values are: `BASIC_PROFILE_UNSPECIFIED`, `ALLOW`, `DENY`.
  final pulumi.Input<String>? basicProfile;

  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String>? createTime;

  /// Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Whether the rule is enforced.
  final pulumi.Input<bool>? enabled;

  /// The name of the gatewat security policy this rule belongs to.
  final pulumi.Input<String>? gatewaySecurityPolicy;

  /// The location of the gateway security policy.
  final pulumi.Input<String>? location;

  /// Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^a-z?$).
  final pulumi.Input<String>? name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  final pulumi.Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;

  /// CEL expression for matching on session criteria.
  final pulumi.Input<String>? sessionMatcher;

  /// Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final pulumi.Input<bool>? tlsInspectionEnabled;

  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GatewaySecurityPolicyRuleState].
  /// [applicationMatcher] CEL expression for matching on L7/application level criteria.
  /// [basicProfile] Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// [createTime] The timestamp when the resource was created.
  /// [description] Free-text description of the resource.
  /// [enabled] Whether the rule is enforced.
  /// [gatewaySecurityPolicy] The name of the gatewat security policy this rule belongs to.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// [priority] Priority of the rule. Lower number corresponds to higher precedence.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] Server-defined URL of this resource.
  /// [sessionMatcher] CEL expression for matching on session criteria.
  /// [tlsInspectionEnabled] Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// [updateTime] The timestamp when the resource was updated.
  GatewaySecurityPolicyRuleState({
    this.applicationMatcher,
    this.basicProfile,
    this.createTime,
    this.description,
    this.enabled,
    this.gatewaySecurityPolicy,
    this.location,
    this.name,
    this.priority,
    this.project,
    this.selfLink,
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
      'gatewaySecurityPolicy': ?gatewaySecurityPolicy,
      'location': ?location,
      'name': ?name,
      'priority': ?priority,
      'project': ?project,
      'selfLink': ?selfLink,
      'sessionMatcher': ?sessionMatcher,
      'tlsInspectionEnabled': ?tlsInspectionEnabled,
      'updateTime': ?updateTime,
    };
  }

  factory GatewaySecurityPolicyRuleState.fromMap(Map<String, dynamic> map) {
    return GatewaySecurityPolicyRuleState(
      applicationMatcher: (() {
        final guardedValue = map['applicationMatcher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      basicProfile: (() {
        final guardedValue = map['basicProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gatewaySecurityPolicy: (() {
        final guardedValue = map['gatewaySecurityPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selfLink: (() {
        final guardedValue = map['selfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionMatcher: (() {
        final guardedValue = map['sessionMatcher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tlsInspectionEnabled: (() {
        final guardedValue = map['tlsInspectionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
