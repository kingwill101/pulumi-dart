// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_action_condition_config.dart';
import 'security_action_deny.dart';
import 'security_action_flag.dart';

/// {@template pulumi_apigee_security_action_security_action_args_doc}
/// The set of arguments for SecurityAction.
/// {@endtemplate}
/// {@macro pulumi_apigee_security_action_security_action_args_doc}
class SecurityActionArgs {
  /// Allow a request through if it matches this SecurityAction.
  final pulumi.Input<Map<String, dynamic>>? allow;
  /// If unset, this would apply to all proxies in the environment.
  /// If set, this action is enforced only if at least one proxy in the repeated
  /// list is deployed at the time of enforcement. If set, several restrictions are enforced on SecurityActions.
  /// There can be at most 100 enabled actions with proxies set in an env.
  /// Several other restrictions apply on conditions and are detailed later.
  final pulumi.Input<List<String>>? apiProxies;
  /// A valid SecurityAction must contain at least one condition.
  /// Structure is documented below.
  final pulumi.Input<SecurityActionConditionConfig> conditionConfig;
  /// Deny a request through if it matches this SecurityAction.
  /// Structure is documented below.
  final pulumi.Input<SecurityActionDeny>? deny;
  /// An optional user provided description of the SecurityAction.
  final pulumi.Input<String>? description;
  /// The Apigee environment that this security action applies to.
  final pulumi.Input<String> envId;
  /// The expiration for this SecurityAction.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9
  /// fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? expireTime;
  /// Flag a request through if it matches this SecurityAction.
  /// Structure is documented below.
  final pulumi.Input<SecurityActionFlag>? flag;
  /// The organization that this security action applies to.
  final pulumi.Input<String> orgId;
  /// The ID to use for the SecurityAction, which will become the final component of the action's resource name.
  /// This value should be 0-61 characters, and valid format is (^a-z?$).
  final pulumi.Input<String> securityActionId;
  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> state;
  /// The TTL for this SecurityAction.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? ttl;

  /// Creates a new [SecurityActionArgs].
  /// [allow] Allow a request through if it matches this SecurityAction.
  /// [apiProxies] If unset, this would apply to all proxies in the environment.
  /// [conditionConfig] A valid SecurityAction must contain at least one condition.
  /// [deny] Deny a request through if it matches this SecurityAction.
  /// [description] An optional user provided description of the SecurityAction.
  /// [envId] The Apigee environment that this security action applies to.
  /// [expireTime] The expiration for this SecurityAction.
  /// [flag] Flag a request through if it matches this SecurityAction.
  /// [orgId] The organization that this security action applies to.
  /// [securityActionId] The ID to use for the SecurityAction, which will become the final component of the action's resource name.
  /// [state] Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// [ttl] The TTL for this SecurityAction.
  SecurityActionArgs({
    this.allow,
    this.apiProxies,
    required this.conditionConfig,
    this.deny,
    this.description,
    required this.envId,
    this.expireTime,
    this.flag,
    required this.orgId,
    required this.securityActionId,
    required this.state,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'apiProxies': ?apiProxies,
      'conditionConfig': pulumi.Input.mapInputValue<SecurityActionConditionConfig, Map<String, dynamic>>(conditionConfig, (value) => value.toMap()),
      'deny': ?pulumi.Input.mapOptionalInputValue<SecurityActionDeny, Map<String, dynamic>>(deny, (value) => value.toMap()),
      'description': ?description,
      'envId': envId,
      'expireTime': ?expireTime,
      'flag': ?pulumi.Input.mapOptionalInputValue<SecurityActionFlag, Map<String, dynamic>>(flag, (value) => value.toMap()),
      'orgId': orgId,
      'securityActionId': securityActionId,
      'state': state,
      'ttl': ?ttl,
    };
  }

  factory SecurityActionArgs.fromMap(Map<String, dynamic> map) {
    return SecurityActionArgs(
      allow: map['allow'] == null ? null : ((map['allow']! as Map).cast<String, dynamic>()).input(),
      apiProxies: map['apiProxies'] == null ? null : ((map['apiProxies']! as List).cast<String>()).input(),
      conditionConfig: (SecurityActionConditionConfig.fromMap((map['conditionConfig'] as Map).cast<String, dynamic>())).input(),
      deny: map['deny'] == null ? null : (SecurityActionDeny.fromMap((map['deny']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      envId: (map['envId'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime']! as String).input(),
      flag: map['flag'] == null ? null : (SecurityActionFlag.fromMap((map['flag']! as Map).cast<String, dynamic>())).input(),
      orgId: (map['orgId'] as String).input(),
      securityActionId: (map['securityActionId'] as String).input(),
      state: (map['state'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as String).input(),
    );
  }
}

