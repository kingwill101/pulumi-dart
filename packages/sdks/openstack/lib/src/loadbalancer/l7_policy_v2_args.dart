// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_l7_policy_v2_l7_policy_v2_args_doc}
/// The set of arguments for L7PolicyV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_l7_policy_v2_l7_policy_v2_args_doc}
class L7PolicyV2Args {
  /// The L7 Policy action - can either be REDIRECT\_TO\_POOL,
  /// REDIRECT\_TO\_URL or REJECT.
  final pulumi.Input<String> action;
  /// The administrative state of the L7 Policy.
  /// A valid value is true (UP) or false (DOWN).
  final pulumi.Input<bool>? adminStateUp;
  /// Human-readable description for the L7 Policy.
  final pulumi.Input<String>? description;
  /// The Listener on which the L7 Policy will be associated with.
  /// Changing this creates a new L7 Policy.
  final pulumi.Input<String> listenerId;
  /// Human-readable name for the L7 Policy. Does not have
  /// to be unique.
  final pulumi.Input<String>? name;
  /// The position of this policy on the listener. Positions start at 1.
  final pulumi.Input<int>? position;
  /// Integer. Requests matching this policy will be
  /// redirected to the specified URL or Prefix URL with the HTTP response code.
  /// Valid if action is REDIRECT\_TO\_URL or REDIRECT\_PREFIX. Valid options are:
  /// 301, 302, 303, 307, or 308. Default is 302. New in octavia version 2.9
  final pulumi.Input<int>? redirectHttpCode;
  /// Requests matching this policy will be redirected to the
  /// pool with this ID. Only valid if action is REDIRECT\_TO\_POOL.
  final pulumi.Input<String>? redirectPoolId;
  /// Requests matching this policy will be redirected to
  /// this Prefix URL. Only valid if action is REDIRECT\_PREFIX.
  final pulumi.Input<String>? redirectPrefix;
  /// Requests matching this policy will be redirected to this URL.
  /// Only valid if action is REDIRECT\_TO\_URL.
  final pulumi.Input<String>? redirectUrl;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an L7 policy. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// L7 Policy.
  final pulumi.Input<String>? region;
  /// Required for admins. The UUID of the tenant who owns
  /// the L7 Policy.  Only administrative users can specify a tenant UUID
  /// other than their own. Changing this creates a new L7 Policy.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [L7PolicyV2Args].
  /// [action] The L7 Policy action - can either be REDIRECT\_TO\_POOL,
  /// [adminStateUp] The administrative state of the L7 Policy.
  /// [description] Human-readable description for the L7 Policy.
  /// [listenerId] The Listener on which the L7 Policy will be associated with.
  /// [name] Human-readable name for the L7 Policy. Does not have
  /// [position] The position of this policy on the listener. Positions start at 1.
  /// [redirectHttpCode] Integer. Requests matching this policy will be
  /// [redirectPoolId] Requests matching this policy will be redirected to the
  /// [redirectPrefix] Requests matching this policy will be redirected to
  /// [redirectUrl] Requests matching this policy will be redirected to this URL.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] Required for admins. The UUID of the tenant who owns
  L7PolicyV2Args({
    required this.action,
    this.adminStateUp,
    this.description,
    required this.listenerId,
    this.name,
    this.position,
    this.redirectHttpCode,
    this.redirectPoolId,
    this.redirectPrefix,
    this.redirectUrl,
    this.region,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'listenerId': listenerId,
      'name': ?name,
      'position': ?position,
      'redirectHttpCode': ?redirectHttpCode,
      'redirectPoolId': ?redirectPoolId,
      'redirectPrefix': ?redirectPrefix,
      'redirectUrl': ?redirectUrl,
      'region': ?region,
      'tenantId': ?tenantId,
    };
  }

  factory L7PolicyV2Args.fromMap(Map<String, dynamic> map) {
    return L7PolicyV2Args(
      action: (map['action'] as String).input(),
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      listenerId: (map['listenerId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      position: map['position'] == null ? null : (map['position']! as int).input(),
      redirectHttpCode: map['redirectHttpCode'] == null ? null : (map['redirectHttpCode']! as int).input(),
      redirectPoolId: map['redirectPoolId'] == null ? null : (map['redirectPoolId']! as String).input(),
      redirectPrefix: map['redirectPrefix'] == null ? null : (map['redirectPrefix']! as String).input(),
      redirectUrl: map['redirectUrl'] == null ? null : (map['redirectUrl']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

