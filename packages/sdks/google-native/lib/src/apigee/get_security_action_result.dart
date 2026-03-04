// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_security_action_condition_config_response.dart';
import 'google_cloud_apigee_v1_security_action_deny_response.dart';
import 'google_cloud_apigee_v1_security_action_flag_response.dart';

/// Result data returned by getSecurityAction.
class GetSecurityActionResult {
  /// Allow a request through if it matches this SecurityAction.
  final Map<String, dynamic> allow;

  /// A valid SecurityAction must contain at least one condition.
  final GoogleCloudApigeeV1SecurityActionConditionConfigResponse
  conditionConfig;

  /// The create time for this SecurityAction.
  final String createTime;

  /// Deny a request through if it matches this SecurityAction.
  final GoogleCloudApigeeV1SecurityActionDenyResponse deny;

  /// Optional. An optional user provided description of the SecurityAction.
  final String description;

  /// The expiration for this SecurityAction.
  final String expireTime;

  /// Flag a request through if it matches this SecurityAction.
  final GoogleCloudApigeeV1SecurityActionFlagResponse flag;

  /// Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_id` field in the CreateSecurityActionRequest when creating a new SecurityAction. Format: organizations/{org}/environments/{env}/securityActions/{security_action}
  final String name;

  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  final String state;

  /// Input only. The TTL for this SecurityAction.
  final String ttl;

  /// The update time for this SecurityAction. This reflects when this SecurityAction changed states.
  final String updateTime;

  /// Creates a new [GetSecurityActionResult].
  /// [allow] Allow a request through if it matches this SecurityAction.
  /// [conditionConfig] A valid SecurityAction must contain at least one condition.
  /// [createTime] The create time for this SecurityAction.
  /// [deny] Deny a request through if it matches this SecurityAction.
  /// [description] Optional. An optional user provided description of the SecurityAction.
  /// [expireTime] The expiration for this SecurityAction.
  /// [flag] Flag a request through if it matches this SecurityAction.
  /// [name] Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_id` field in the CreateSecurityActionRequest when creating a new SecurityAction. Format: organizations/{org}/environments/{env}/securityActions/{security_action}
  /// [state] Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  /// [ttl] Input only. The TTL for this SecurityAction.
  /// [updateTime] The update time for this SecurityAction. This reflects when this SecurityAction changed states.
  GetSecurityActionResult({
    required this.allow,
    required this.conditionConfig,
    required this.createTime,
    required this.deny,
    required this.description,
    required this.expireTime,
    required this.flag,
    required this.name,
    required this.state,
    required this.ttl,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': allow,
      'conditionConfig': conditionConfig.toMap(),
      'createTime': createTime,
      'deny': deny.toMap(),
      'description': description,
      'expireTime': expireTime,
      'flag': flag.toMap(),
      'name': name,
      'state': state,
      'ttl': ttl,
      'updateTime': updateTime,
    };
  }

  factory GetSecurityActionResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityActionResult(
      allow: (map['allow']! as Map).cast<String, dynamic>(),
      conditionConfig:
          GoogleCloudApigeeV1SecurityActionConditionConfigResponse.fromMap(
            (map['conditionConfig']! as Map).cast<String, dynamic>(),
          ),
      createTime: map['createTime'] as String,
      deny: GoogleCloudApigeeV1SecurityActionDenyResponse.fromMap(
        (map['deny']! as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      expireTime: map['expireTime'] as String,
      flag: GoogleCloudApigeeV1SecurityActionFlagResponse.fromMap(
        (map['flag']! as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      state: map['state'] as String,
      ttl: map['ttl'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
