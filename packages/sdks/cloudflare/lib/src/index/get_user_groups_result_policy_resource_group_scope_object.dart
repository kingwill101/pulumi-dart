// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserGroupsResultPolicyResourceGroupScopeObject {
  /// This is a combination of pre-defined resource name and identifier (like Zone ID etc.)
  final pulumi.Input<String> key;

  /// Creates a new [GetUserGroupsResultPolicyResourceGroupScopeObject].
  /// [key] This is a combination of pre-defined resource name and identifier (like Zone ID etc.)
  const GetUserGroupsResultPolicyResourceGroupScopeObject({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory GetUserGroupsResultPolicyResourceGroupScopeObject.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResultPolicyResourceGroupScopeObject(
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
