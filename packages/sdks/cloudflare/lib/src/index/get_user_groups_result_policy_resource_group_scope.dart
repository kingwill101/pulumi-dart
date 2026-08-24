// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_result_policy_resource_group_scope_object.dart';

class GetUserGroupsResultPolicyResourceGroupScope {
  /// This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  final pulumi.Input<String> key;
  /// A list of scope objects for additional context.
  final pulumi.Input<List<GetUserGroupsResultPolicyResourceGroupScopeObject>> objects;

  /// Creates a new [GetUserGroupsResultPolicyResourceGroupScope].
  /// [key] This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  /// [objects] A list of scope objects for additional context.
  const GetUserGroupsResultPolicyResourceGroupScope({
    required this.key,
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'objects': pulumi.Input.mapInputValue<List<GetUserGroupsResultPolicyResourceGroupScopeObject>, List<Map<String, dynamic>>>(objects, (value) => pulumi.Input.encodeList<GetUserGroupsResultPolicyResourceGroupScopeObject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserGroupsResultPolicyResourceGroupScope.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResultPolicyResourceGroupScope(
      key: pulumi.Input.fromValue(map['key'] as String),
      objects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserGroupsResultPolicyResourceGroupScopeObject>(map['objects']!, (value) => GetUserGroupsResultPolicyResourceGroupScopeObject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
