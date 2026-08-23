// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_acl_access_policy.dart';

class GetTableAcl {
  final pulumi.Input<List<GetTableAclAccessPolicy>> accessPolicies;
  /// The ID of the Storage Table.
  final pulumi.Input<String> id;

  /// Creates a new [GetTableAcl].
  /// [accessPolicies] Required.
  /// [id] The ID of the Storage Table.
  const GetTableAcl({
    required this.accessPolicies,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': pulumi.Input.mapInputValue<List<GetTableAclAccessPolicy>, List<Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeList<GetTableAclAccessPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
    };
  }

  factory GetTableAcl.fromMap(Map<String, dynamic> map) {
    return GetTableAcl(
      accessPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableAclAccessPolicy>(map['accessPolicies']!, (value) => GetTableAclAccessPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
