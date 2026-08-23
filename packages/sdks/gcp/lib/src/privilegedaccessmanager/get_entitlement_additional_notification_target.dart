// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEntitlementAdditionalNotificationTarget {
  /// Optional. Additional email addresses to be notified when a principal(requester) is granted access.
  final pulumi.Input<List<String>> adminEmailRecipients;
  /// Optional. Additional email address to be notified about an eligible entitlement.
  final pulumi.Input<List<String>> requesterEmailRecipients;

  /// Creates a new [GetEntitlementAdditionalNotificationTarget].
  /// [adminEmailRecipients] Optional. Additional email addresses to be notified when a principal(requester) is granted access.
  /// [requesterEmailRecipients] Optional. Additional email address to be notified about an eligible entitlement.
  const GetEntitlementAdditionalNotificationTarget({
    required this.adminEmailRecipients,
    required this.requesterEmailRecipients,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEmailRecipients': adminEmailRecipients,
      'requesterEmailRecipients': requesterEmailRecipients,
    };
  }

  factory GetEntitlementAdditionalNotificationTarget.fromMap(Map<String, dynamic> map) {
    return GetEntitlementAdditionalNotificationTarget(
      adminEmailRecipients: pulumi.Input.fromValue((map['adminEmailRecipients'] as List).cast<String>()),
      requesterEmailRecipients: pulumi.Input.fromValue((map['requesterEmailRecipients'] as List).cast<String>()),
    );
  }
}
