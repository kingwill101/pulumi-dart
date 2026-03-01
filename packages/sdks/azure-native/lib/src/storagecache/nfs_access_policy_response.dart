// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_access_rule_response.dart';

/// A set of rules describing access policies applied to NFSv3 clients of the cache.
class NfsAccessPolicyResponse {
  /// The set of rules describing client accesses allowed under this policy.
  final List<NfsAccessRuleResponse> accessRules;
  /// Name identifying this policy. Access Policy names are not case sensitive.
  final String name;

  /// Creates a new [NfsAccessPolicyResponse].
  /// [accessRules] The set of rules describing client accesses allowed under this policy.
  /// [name] Name identifying this policy. Access Policy names are not case sensitive.
  NfsAccessPolicyResponse({
    required this.accessRules,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRules': pulumi.Input.encodeList<NfsAccessRuleResponse, Map<String, dynamic>>(accessRules, (value) => value.toMap()),
      'name': name,
    };
  }

  factory NfsAccessPolicyResponse.fromMap(Map<String, dynamic> map) {
    return NfsAccessPolicyResponse(
      accessRules: pulumi.Input.decodeList<NfsAccessRuleResponse>(map['accessRules'], (value) => NfsAccessRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

