// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountMembersResultPolicyResourceGroupScopeObject {
  /// This is a combination of pre-defined resource name and identifier (like Zone ID etc.)
  final pulumi.Input<String> key;

  /// Creates a new [GetAccountMembersResultPolicyResourceGroupScopeObject].
  /// [key] This is a combination of pre-defined resource name and identifier (like Zone ID etc.)
  const GetAccountMembersResultPolicyResourceGroupScopeObject({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory GetAccountMembersResultPolicyResourceGroupScopeObject.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersResultPolicyResourceGroupScopeObject(
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
