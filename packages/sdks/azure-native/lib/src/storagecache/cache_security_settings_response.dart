// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_access_policy_response.dart';

/// Cache security settings.
class CacheSecuritySettingsResponse {
  /// NFS access policies defined for this cache.
  final pulumi.Input<List<NfsAccessPolicyResponse>>? accessPolicies;

  /// Creates a new [CacheSecuritySettingsResponse].
  /// [accessPolicies] NFS access policies defined for this cache.
  CacheSecuritySettingsResponse({
    this.accessPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?pulumi.Input.mapOptionalInputValue<List<NfsAccessPolicyResponse>, List<Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeList<NfsAccessPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CacheSecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return CacheSecuritySettingsResponse(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NfsAccessPolicyResponse>(guardedValue, (value) => NfsAccessPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

