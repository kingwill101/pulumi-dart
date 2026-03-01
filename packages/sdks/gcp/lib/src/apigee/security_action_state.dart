// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_action_condition_config.dart';
import 'security_action_deny.dart';
import 'security_action_flag.dart';

/// Input properties used for looking up and filtering SecurityAction resources.
class SecurityActionState {
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
  final pulumi.Input<SecurityActionConditionConfig>? conditionConfig;
  /// The create time for this SecurityAction.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? createTime;
  /// Deny a request through if it matches this SecurityAction.
  /// Structure is documented below.
  final pulumi.Input<SecurityActionDeny>? deny;
  /// An optional user provided description of the SecurityAction.
  final pulumi.Input<String>? description;
  /// The Apigee environment that this security action applies to.
  final pulumi.Input<String>? envId;
  /// The expiration for this SecurityAction.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9
  /// fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? expireTime;
  /// Flag a request through if it matches this SecurityAction.
  /// Structure is documented below.
  final pulumi.Input<SecurityActionFlag>? flag;
  /// The organization that this security action applies to.
  final pulumi.Input<String>? orgId;
  /// The ID to use for the SecurityAction, which will become the final component of the action's resource name.
  /// This value should be 0-61 characters, and valid format is (^a-z?$).
  final pulumi.Input<String>? securityActionId;
  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? state;
  /// The TTL for this SecurityAction.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? ttl;
  /// The update time for this SecurityAction. This reflects when this SecurityAction changed states.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SecurityActionState].
  /// [allow] Allow a request through if it matches this SecurityAction.
  /// [apiProxies] If unset, this would apply to all proxies in the environment.
  /// [conditionConfig] A valid SecurityAction must contain at least one condition.
  /// [createTime] The create time for this SecurityAction.
  /// [deny] Deny a request through if it matches this SecurityAction.
  /// [description] An optional user provided description of the SecurityAction.
  /// [envId] The Apigee environment that this security action applies to.
  /// [expireTime] The expiration for this SecurityAction.
  /// [flag] Flag a request through if it matches this SecurityAction.
  /// [orgId] The organization that this security action applies to.
  /// [securityActionId] The ID to use for the SecurityAction, which will become the final component of the action's resource name.
  /// [state] Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// [ttl] The TTL for this SecurityAction.
  /// [updateTime] The update time for this SecurityAction. This reflects when this SecurityAction changed states.
  SecurityActionState({
    pulumi.Output<Map<String, dynamic>>? allow,
    pulumi.Output<List<String>>? apiProxies,
    pulumi.Output<SecurityActionConditionConfig>? conditionConfig,
    pulumi.Output<String>? createTime,
    pulumi.Output<SecurityActionDeny>? deny,
    pulumi.Output<String>? description,
    pulumi.Output<String>? envId,
    pulumi.Output<String>? expireTime,
    pulumi.Output<SecurityActionFlag>? flag,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? securityActionId,
    pulumi.Output<String>? state,
    pulumi.Output<String>? ttl,
    pulumi.Output<String>? updateTime,
  }) :
      allow = pulumi.Input.asOptionalInput<Map<String, dynamic>>(allow),
      apiProxies = pulumi.Input.asOptionalInput<List<String>>(apiProxies),
      conditionConfig = pulumi.Input.asOptionalInput<SecurityActionConditionConfig>(conditionConfig),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deny = pulumi.Input.asOptionalInput<SecurityActionDeny>(deny),
      description = pulumi.Input.asOptionalInput<String>(description),
      envId = pulumi.Input.asOptionalInput<String>(envId),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      flag = pulumi.Input.asOptionalInput<SecurityActionFlag>(flag),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      securityActionId = pulumi.Input.asOptionalInput<String>(securityActionId),
      state = pulumi.Input.asOptionalInput<String>(state),
      ttl = pulumi.Input.asOptionalInput<String>(ttl),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'apiProxies': ?apiProxies,
      'conditionConfig': ?pulumi.Input.mapOptionalInputValue<SecurityActionConditionConfig, Map<String, dynamic>>(conditionConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'deny': ?pulumi.Input.mapOptionalInputValue<SecurityActionDeny, Map<String, dynamic>>(deny, (value) => value.toMap()),
      'description': ?description,
      'envId': ?envId,
      'expireTime': ?expireTime,
      'flag': ?pulumi.Input.mapOptionalInputValue<SecurityActionFlag, Map<String, dynamic>>(flag, (value) => value.toMap()),
      'orgId': ?orgId,
      'securityActionId': ?securityActionId,
      'state': ?state,
      'ttl': ?ttl,
      'updateTime': ?updateTime,
    };
  }

  factory SecurityActionState.fromMap(Map<String, dynamic> map) {
    return SecurityActionState(
      allow: map['allow'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['allow'] as Map).cast<String, dynamic>()),
      apiProxies: map['apiProxies'] == null ? null : pulumi.Output.create<List<String>>((map['apiProxies'] as List).cast<String>()),
      conditionConfig: map['conditionConfig'] == null ? null : pulumi.Output.create<SecurityActionConditionConfig>(SecurityActionConditionConfig.fromMap((map['conditionConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deny: map['deny'] == null ? null : pulumi.Output.create<SecurityActionDeny>(SecurityActionDeny.fromMap((map['deny'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      envId: map['envId'] == null ? null : pulumi.Output.create<String>(map['envId'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      flag: map['flag'] == null ? null : pulumi.Output.create<SecurityActionFlag>(SecurityActionFlag.fromMap((map['flag'] as Map).cast<String, dynamic>())),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      securityActionId: map['securityActionId'] == null ? null : pulumi.Output.create<String>(map['securityActionId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<String>(map['ttl'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

