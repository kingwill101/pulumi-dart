// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserGroupPolicyResourceGroupScopeObject {
  /// This is a combination of pre-defined resource name and identifier (like Zone ID etc.)
  final pulumi.Input<String> key;

  /// Creates a new [GetUserGroupPolicyResourceGroupScopeObject].
  /// [key] This is a combination of pre-defined resource name and identifier (like Zone ID etc.)
  const GetUserGroupPolicyResourceGroupScopeObject({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory GetUserGroupPolicyResourceGroupScopeObject.fromMap(Map<String, dynamic> map) {
    return GetUserGroupPolicyResourceGroupScopeObject(
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
