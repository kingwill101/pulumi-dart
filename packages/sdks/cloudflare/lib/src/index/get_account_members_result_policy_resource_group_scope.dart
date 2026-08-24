// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_members_result_policy_resource_group_scope_object.dart';

class GetAccountMembersResultPolicyResourceGroupScope {
  /// This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  final pulumi.Input<String> key;
  /// A list of scope objects for additional context.
  final pulumi.Input<List<GetAccountMembersResultPolicyResourceGroupScopeObject>> objects;

  /// Creates a new [GetAccountMembersResultPolicyResourceGroupScope].
  /// [key] This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  /// [objects] A list of scope objects for additional context.
  const GetAccountMembersResultPolicyResourceGroupScope({
    required this.key,
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'objects': pulumi.Input.mapInputValue<List<GetAccountMembersResultPolicyResourceGroupScopeObject>, List<Map<String, dynamic>>>(objects, (value) => pulumi.Input.encodeList<GetAccountMembersResultPolicyResourceGroupScopeObject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccountMembersResultPolicyResourceGroupScope.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersResultPolicyResourceGroupScope(
      key: pulumi.Input.fromValue(map['key'] as String),
      objects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountMembersResultPolicyResourceGroupScopeObject>(map['objects']!, (value) => GetAccountMembersResultPolicyResourceGroupScopeObject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
