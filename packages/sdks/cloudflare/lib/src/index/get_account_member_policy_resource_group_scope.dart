// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_member_policy_resource_group_scope_object.dart';

class GetAccountMemberPolicyResourceGroupScope {
  /// This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  final pulumi.Input<String> key;
  /// A list of scope objects for additional context.
  final pulumi.Input<List<GetAccountMemberPolicyResourceGroupScopeObject>> objects;

  /// Creates a new [GetAccountMemberPolicyResourceGroupScope].
  /// [key] This is a combination of pre-defined resource name and identifier (like Account ID etc.)
  /// [objects] A list of scope objects for additional context.
  const GetAccountMemberPolicyResourceGroupScope({
    required this.key,
    required this.objects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'objects': pulumi.Input.mapInputValue<List<GetAccountMemberPolicyResourceGroupScopeObject>, List<Map<String, dynamic>>>(objects, (value) => pulumi.Input.encodeList<GetAccountMemberPolicyResourceGroupScopeObject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccountMemberPolicyResourceGroupScope.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberPolicyResourceGroupScope(
      key: pulumi.Input.fromValue(map['key'] as String),
      objects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountMemberPolicyResourceGroupScopeObject>(map['objects']!, (value) => GetAccountMemberPolicyResourceGroupScopeObject.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
