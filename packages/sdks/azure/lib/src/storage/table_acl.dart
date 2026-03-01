// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_acl_access_policy.dart';

class TableAcl {
  /// An `access_policy` block as defined below.
  final List<TableAclAccessPolicy>? accessPolicies;
  /// The ID which should be used for this Shared Identifier.
  final String id;

  /// Creates a new [TableAcl].
  /// [accessPolicies] An `access_policy` block as defined below.
  /// [id] The ID which should be used for this Shared Identifier.
  TableAcl({
    this.accessPolicies,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies == null ? null : pulumi.Input.encodeList<TableAclAccessPolicy, Map<String, dynamic>>(accessPolicies!, (value) => value.toMap()),
      'id': id,
    };
  }

  factory TableAcl.fromMap(Map<String, dynamic> map) {
    return TableAcl(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Input.decodeList<TableAclAccessPolicy>(map['accessPolicies'], (value) => TableAclAccessPolicy.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}

