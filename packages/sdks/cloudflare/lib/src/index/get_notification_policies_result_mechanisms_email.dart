// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationPoliciesResultMechanismsEmail {
  /// The email address
  final pulumi.Input<String> id;

  /// Creates a new [GetNotificationPoliciesResultMechanismsEmail].
  /// [id] The email address
  const GetNotificationPoliciesResultMechanismsEmail({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetNotificationPoliciesResultMechanismsEmail.fromMap(Map<String, dynamic> map) {
    return GetNotificationPoliciesResultMechanismsEmail(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
