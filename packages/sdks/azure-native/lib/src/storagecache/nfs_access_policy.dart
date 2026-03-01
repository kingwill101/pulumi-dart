// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_access_rule.dart';

/// A set of rules describing access policies applied to NFSv3 clients of the cache.
class NfsAccessPolicy {
  /// The set of rules describing client accesses allowed under this policy.
  final List<NfsAccessRule> accessRules;
  /// Name identifying this policy. Access Policy names are not case sensitive.
  final String name;

  /// Creates a new [NfsAccessPolicy].
  /// [accessRules] The set of rules describing client accesses allowed under this policy.
  /// [name] Name identifying this policy. Access Policy names are not case sensitive.
  NfsAccessPolicy({
    required this.accessRules,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRules': pulumi.Input.encodeList<NfsAccessRule, Map<String, dynamic>>(accessRules, (value) => value.toMap()),
      'name': name,
    };
  }

  factory NfsAccessPolicy.fromMap(Map<String, dynamic> map) {
    return NfsAccessPolicy(
      accessRules: pulumi.Input.decodeList<NfsAccessRule>(map['accessRules'], (value) => NfsAccessRule.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

