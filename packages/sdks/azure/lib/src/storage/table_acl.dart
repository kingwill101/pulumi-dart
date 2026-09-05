// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_acl_access_policy.dart';

class TableAcl {
  /// An `accessPolicy` block as defined below.
  final pulumi.Input<List<TableAclAccessPolicy>?>? accessPolicies;
  /// The ID which should be used for this Shared Identifier.
  final pulumi.Input<String> id;

  /// Creates a new [TableAcl].
  /// [accessPolicies] An `accessPolicy` block as defined below.
  /// [id] The ID which should be used for this Shared Identifier.
  const TableAcl({
    this.accessPolicies,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?pulumi.Input.mapOptionalInputValue<List<TableAclAccessPolicy>, List<Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeList<TableAclAccessPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
    };
  }

  factory TableAcl.fromMap(Map<String, dynamic> map) {
    return TableAcl(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableAclAccessPolicy>(guardedValue, (value) => TableAclAccessPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
