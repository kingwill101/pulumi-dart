// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserGroupPolicyResourceGroup {
  /// Resource Group identifier tag.
  final pulumi.Input<String> id;

  /// Creates a new [UserGroupPolicyResourceGroup].
  /// [id] Resource Group identifier tag.
  const UserGroupPolicyResourceGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory UserGroupPolicyResourceGroup.fromMap(Map<String, dynamic> map) {
    return UserGroupPolicyResourceGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
