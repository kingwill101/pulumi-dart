// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_group_policy_resource_group_scope_object.dart';

class GetUserGroupPolicyResourceGroupScope {
  /// This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  final pulumi.Input<String> key;
  /// A list of scope objects for additional context.
  final pulumi.Input<List<GetUserGroupPolicyResourceGroupScopeObject>> objects;

  /// Creates a new [GetUserGroupPolicyResourceGroupScope].
  /// [key] This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  /// [objects] A list of scope objects for additional context.
  const GetUserGroupPolicyResourceGroupScope({
    required this.key,
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'objects': pulumi.Input.mapInputValue<List<GetUserGroupPolicyResourceGroupScopeObject>, List<Map<String, dynamic>>>(objects, (value) => pulumi.Input.encodeList<GetUserGroupPolicyResourceGroupScopeObject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserGroupPolicyResourceGroupScope.fromMap(Map<String, dynamic> map) {
    return GetUserGroupPolicyResourceGroupScope(
      key: pulumi.Input.fromValue(map['key'] as String),
      objects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserGroupPolicyResourceGroupScopeObject>(map['objects']!, (value) => GetUserGroupPolicyResourceGroupScopeObject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
