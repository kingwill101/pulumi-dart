// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionDeadLetterIdentity {
  /// Specifies the type of Managed Service Identity that is used for dead lettering. Allowed value is `SystemAssigned`, `UserAssigned`.
  final pulumi.Input<String> type;
  /// The user identity associated with the resource.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [EventSubscriptionDeadLetterIdentity].
  /// [type] Specifies the type of Managed Service Identity that is used for dead lettering. Allowed value is `SystemAssigned`, `UserAssigned`.
  /// [userAssignedIdentity] The user identity associated with the resource.
  EventSubscriptionDeadLetterIdentity({
    required this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory EventSubscriptionDeadLetterIdentity.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionDeadLetterIdentity(
      type: (map['type'] as String).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity']! as String).input(),
    );
  }
}

