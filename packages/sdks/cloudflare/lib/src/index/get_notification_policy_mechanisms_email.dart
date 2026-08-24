// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationPolicyMechanismsEmail {
  /// The email address
  final pulumi.Input<String> id;

  /// Creates a new [GetNotificationPolicyMechanismsEmail].
  /// [id] The email address
  const GetNotificationPolicyMechanismsEmail({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetNotificationPolicyMechanismsEmail.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyMechanismsEmail(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
