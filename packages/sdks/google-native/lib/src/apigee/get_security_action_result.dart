// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_security_action_condition_config_response.dart';
import 'google_cloud_apigee_v1_security_action_deny_response.dart';
import 'google_cloud_apigee_v1_security_action_flag_response.dart';

/// Result data returned by getSecurityAction.
class GetSecurityActionResult {
  /// Allow a request through if it matches this SecurityAction.
  final Map<String, dynamic>? allow;
  /// A valid SecurityAction must contain at least one condition.
  final GoogleCloudApigeeV1SecurityActionConditionConfigResponse? conditionConfig;
  /// The create time for this SecurityAction.
  final String? createTime;
  /// Deny a request through if it matches this SecurityAction.
  final GoogleCloudApigeeV1SecurityActionDenyResponse? deny;
  /// Optional. An optional user provided description of the SecurityAction.
  final String? description;
  /// The expiration for this SecurityAction.
  final String? expireTime;
  /// Flag a request through if it matches this SecurityAction.
  final GoogleCloudApigeeV1SecurityActionFlagResponse? flag;
  /// Immutable. This field is ignored during creation as per AIP-133. Please set the `security_action_id` field in the CreateSecurityActionRequest when creating a new SecurityAction. Format: organizations/{org}/environments/{env}/securityActions/{security_action}
  final String? name;
  /// Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
  final String? state;
  /// Input only. The TTL for this SecurityAction.
  final String? ttl;
  /// The update time for this SecurityAction. This reflects when this SecurityAction changed states.
  final String? updateTime;

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
  const GetSecurityActionResult({
    this.allow,
    this.conditionConfig,
    this.createTime,
    this.deny,
    this.description,
    this.expireTime,
    this.flag,
    this.name,
    this.state,
    this.ttl,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'conditionConfig': ?conditionConfig?.toMap(),
      'createTime': ?createTime,
      'deny': ?deny?.toMap(),
      'description': ?description,
      'expireTime': ?expireTime,
      'flag': ?flag?.toMap(),
      'name': ?name,
      'state': ?state,
      'ttl': ?ttl,
      'updateTime': ?updateTime,
    };
  }

  factory GetSecurityActionResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityActionResult(
      allow: (() { final guardedValue = map['allow']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      conditionConfig: (() { final guardedValue = map['conditionConfig']; if (guardedValue == null) return null; return GoogleCloudApigeeV1SecurityActionConditionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deny: (() { final guardedValue = map['deny']; if (guardedValue == null) return null; return GoogleCloudApigeeV1SecurityActionDenyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flag: (() { final guardedValue = map['flag']; if (guardedValue == null) return null; return GoogleCloudApigeeV1SecurityActionFlagResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
