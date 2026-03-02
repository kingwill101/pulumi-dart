// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystemTopicEventSubscriptionDeadLetterIdentity {
  /// Specifies the type of Managed Service Identity that is used for dead lettering. Allowed value is `SystemAssigned`, `UserAssigned`.
  final pulumi.Input<String> type;
  /// The user identity associated with the resource.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [SystemTopicEventSubscriptionDeadLetterIdentity].
  /// [type] Specifies the type of Managed Service Identity that is used for dead lettering. Allowed value is `SystemAssigned`, `UserAssigned`.
  /// [userAssignedIdentity] The user identity associated with the resource.
  SystemTopicEventSubscriptionDeadLetterIdentity({
    required this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory SystemTopicEventSubscriptionDeadLetterIdentity.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionDeadLetterIdentity(
      type: (map['type'] as String).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity']! as String).input(),
    );
  }
}

