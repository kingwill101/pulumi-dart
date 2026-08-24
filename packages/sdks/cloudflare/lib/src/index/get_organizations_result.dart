// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizations_result_meta.dart';
import 'get_organizations_result_parent.dart';
import 'get_organizations_result_profile.dart';

class GetOrganizationsResult {
  final pulumi.Input<String> createTime;
  final pulumi.Input<String> id;
  final pulumi.Input<GetOrganizationsResultMeta> meta;
  final pulumi.Input<String> name;
  final pulumi.Input<GetOrganizationsResultParent> parent;
  final pulumi.Input<GetOrganizationsResultProfile> profile;

  /// Creates a new [GetOrganizationsResult].
  /// [createTime] Required.
  /// [id] Required.
  /// [meta] Required.
  /// [name] Required.
  /// [parent] Required.
  /// [profile] Required.
  const GetOrganizationsResult({
    required this.createTime,
    required this.id,
    required this.meta,
    required this.name,
    required this.parent,
    required this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetOrganizationsResultMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'name': name,
      'parent': pulumi.Input.mapInputValue<GetOrganizationsResultParent, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'profile': pulumi.Input.mapInputValue<GetOrganizationsResultProfile, Map<String, dynamic>>(profile, (value) => value.toMap()),
    };
  }

  factory GetOrganizationsResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsResult(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetOrganizationsResultMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: pulumi.Input.fromValue(GetOrganizationsResultParent.fromMap((map['parent']! as Map).cast<String, dynamic>())),
      profile: pulumi.Input.fromValue(GetOrganizationsResultProfile.fromMap((map['profile']! as Map).cast<String, dynamic>())),
    );
  }
}
