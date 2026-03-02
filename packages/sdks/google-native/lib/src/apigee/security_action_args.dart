// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_security_action_condition_config.dart';
import 'google_cloud_apigee_v1_security_action_deny.dart';
import 'google_cloud_apigee_v1_security_action_flag.dart';
import 'security_action_state.dart';

/// {@template pulumi_apigee_v1_security_action_args_doc}
/// The set of arguments for SecurityAction.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_security_action_args_doc}
class SecurityActionArgs {
  /// Allow a request through if it matches this SecurityAction.
  final pulumi.Input<Map<String, dynamic>>? allow;
  /// A valid SecurityAction must contain at least one condition.
  final pulumi.Input<GoogleCloudApigeeV1SecurityActionConditionConfig> conditionConfig;
  /// Deny a request through if it matches this SecurityAction.
  final pulumi.Input<GoogleCloudApigeeV1SecurityActionDeny>? deny;
  /// Optional. An optional user provided description of the SecurityAction.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> environmentId;
  /// The expiration for this SecurityAction.
  final pulumi.Input<String>? expireTime;
  /// Flag a request through if it matches this SecurityAction.
  final pulumi.Input<GoogleCloudApigeeV1SecurityActionFlag>? flag;
  /// Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_id` field in the CreateSecurityActionRequest when creating a new SecurityAction. Format: organizations/{org}/environments/{env}/securityActions/{security_action}
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Required. The ID to use for the SecurityAction, which will become the final component of the action's resource name. This value should be 0-61 characters, and valid format is (^[a-z]([a-z0-9-]{​0,61}[a-z0-9])?$).
  final pulumi.Input<String> securityActionId;
  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  final pulumi.Input<SecurityActionState> state;
  /// Input only. The TTL for this SecurityAction.
  final pulumi.Input<String>? ttl;

  /// Creates a new [SecurityActionArgs].
  /// [allow] Allow a request through if it matches this SecurityAction.
  /// [conditionConfig] A valid SecurityAction must contain at least one condition.
  /// [deny] Deny a request through if it matches this SecurityAction.
  /// [description] Optional. An optional user provided description of the SecurityAction.
  /// [environmentId] Required.
  /// [expireTime] The expiration for this SecurityAction.
  /// [flag] Flag a request through if it matches this SecurityAction.
  /// [name] Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_id` field in the CreateSecurityActionRequest when creating a new SecurityAction. Format: organizations/{org}/environments/{env}/securityActions/{security_action}
  /// [organizationId] Required.
  /// [securityActionId] Required. The ID to use for the SecurityAction, which will become the final component of the action's resource name. This value should be 0-61 characters, and valid format is (^[a-z]([a-z0-9-]{​0,61}[a-z0-9])?$).
  /// [state] Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// [ttl] Input only. The TTL for this SecurityAction.
  SecurityActionArgs({
    this.allow,
    required this.conditionConfig,
    this.deny,
    this.description,
    required this.environmentId,
    this.expireTime,
    this.flag,
    this.name,
    required this.organizationId,
    required this.securityActionId,
    required this.state,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'conditionConfig': pulumi.Input.mapInputValue<GoogleCloudApigeeV1SecurityActionConditionConfig, Map<String, dynamic>>(conditionConfig, (value) => value.toMap()),
      'deny': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1SecurityActionDeny, Map<String, dynamic>>(deny, (value) => value.toMap()),
      'description': ?description,
      'environmentId': environmentId,
      'expireTime': ?expireTime,
      'flag': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1SecurityActionFlag, Map<String, dynamic>>(flag, (value) => value.toMap()),
      'name': ?name,
      'organizationId': organizationId,
      'securityActionId': securityActionId,
      'state': pulumi.Input.mapInputValue<SecurityActionState, String>(state, (value) => value.value),
      'ttl': ?ttl,
    };
  }

  factory SecurityActionArgs.fromMap(Map<String, dynamic> map) {
    return SecurityActionArgs(
      allow: map['allow'] == null ? null : ((map['allow']! as Map).cast<String, dynamic>()).input(),
      conditionConfig: (GoogleCloudApigeeV1SecurityActionConditionConfig.fromMap((map['conditionConfig'] as Map).cast<String, dynamic>())).input(),
      deny: map['deny'] == null ? null : (GoogleCloudApigeeV1SecurityActionDeny.fromMap((map['deny']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime']! as String).input(),
      flag: map['flag'] == null ? null : (GoogleCloudApigeeV1SecurityActionFlag.fromMap((map['flag']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      securityActionId: (map['securityActionId'] as String).input(),
      state: (SecurityActionState.fromValue(map['state'] as String)).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as String).input(),
    );
  }
}

