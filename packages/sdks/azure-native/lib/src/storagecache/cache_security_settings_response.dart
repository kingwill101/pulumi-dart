// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_access_policy_response.dart';

/// Cache security settings.
class CacheSecuritySettingsResponse {
  /// NFS access policies defined for this cache.
  final List<NfsAccessPolicyResponse>? accessPolicies;

  /// Creates a new [CacheSecuritySettingsResponse].
  /// [accessPolicies] NFS access policies defined for this cache.
  CacheSecuritySettingsResponse({
    this.accessPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies == null ? null : pulumi.Input.encodeList<NfsAccessPolicyResponse, Map<String, dynamic>>(accessPolicies!, (value) => value.toMap()),
    };
  }

  factory CacheSecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return CacheSecuritySettingsResponse(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Input.decodeList<NfsAccessPolicyResponse>(map['accessPolicies'], (value) => NfsAccessPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

