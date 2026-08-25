// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_group.dart';

/// Result data returned by getGroups.
class GetGroupsResult {
  /// The list of groups under the provided customer or namespace. Structure is documented below.
  final List<GetGroupsGroup>? groups;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? parent;

  /// Creates a new [GetGroupsResult].
  /// [groups] The list of groups under the provided customer or namespace. Structure is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parent] Optional.
  const GetGroupsResult({
    this.groups,
    this.id,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?(() { final guardedValue = groups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupsGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'parent': ?parent,
    };
  }

  factory GetGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsResult(
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupsGroup>(guardedValue, (value) => GetGroupsGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
