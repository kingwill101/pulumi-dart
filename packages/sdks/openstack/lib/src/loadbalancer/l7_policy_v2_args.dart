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
    required pulumi.Output<String> action,
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<String>? description,
    required pulumi.Output<String> listenerId,
    pulumi.Output<String>? name,
    pulumi.Output<int>? position,
    pulumi.Output<int>? redirectHttpCode,
    pulumi.Output<String>? redirectPoolId,
    pulumi.Output<String>? redirectPrefix,
    pulumi.Output<String>? redirectUrl,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tenantId,
  }) :
      action = pulumi.Input.asInput<String>(action),
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      description = pulumi.Input.asOptionalInput<String>(description),
      listenerId = pulumi.Input.asInput<String>(listenerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      position = pulumi.Input.asOptionalInput<int>(position),
      redirectHttpCode = pulumi.Input.asOptionalInput<int>(redirectHttpCode),
      redirectPoolId = pulumi.Input.asOptionalInput<String>(redirectPoolId),
      redirectPrefix = pulumi.Input.asOptionalInput<String>(redirectPrefix),
      redirectUrl = pulumi.Input.asOptionalInput<String>(redirectUrl),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      action: pulumi.Output.create<String>(map['action'] as String),
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      listenerId: pulumi.Output.create<String>(map['listenerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      position: map['position'] == null ? null : pulumi.Output.create<int>(map['position'] as int),
      redirectHttpCode: map['redirectHttpCode'] == null ? null : pulumi.Output.create<int>(map['redirectHttpCode'] as int),
      redirectPoolId: map['redirectPoolId'] == null ? null : pulumi.Output.create<String>(map['redirectPoolId'] as String),
      redirectPrefix: map['redirectPrefix'] == null ? null : pulumi.Output.create<String>(map['redirectPrefix'] as String),
      redirectUrl: map['redirectUrl'] == null ? null : pulumi.Output.create<String>(map['redirectUrl'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

