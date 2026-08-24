// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountMemberPolicyResourceGroup {
  /// Identifier of the group.
  final pulumi.Input<String> id;

  /// Creates a new [AccountMemberPolicyResourceGroup].
  /// [id] Identifier of the group.
  const AccountMemberPolicyResourceGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccountMemberPolicyResourceGroup.fromMap(Map<String, dynamic> map) {
    return AccountMemberPolicyResourceGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
