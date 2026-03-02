// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntitlementAdditionalNotificationTargets {
  /// Optional. Additional email addresses to be notified when a principal(requester) is granted access.
  final pulumi.Input<List<String>>? adminEmailRecipients;
  /// Optional. Additional email address to be notified about an eligible entitlement.
  final pulumi.Input<List<String>>? requesterEmailRecipients;

  /// Creates a new [EntitlementAdditionalNotificationTargets].
  /// [adminEmailRecipients] Optional. Additional email addresses to be notified when a principal(requester) is granted access.
  /// [requesterEmailRecipients] Optional. Additional email address to be notified about an eligible entitlement.
  EntitlementAdditionalNotificationTargets({
    this.adminEmailRecipients,
    this.requesterEmailRecipients,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEmailRecipients': ?adminEmailRecipients,
      'requesterEmailRecipients': ?requesterEmailRecipients,
    };
  }

  factory EntitlementAdditionalNotificationTargets.fromMap(Map<String, dynamic> map) {
    return EntitlementAdditionalNotificationTargets(
      adminEmailRecipients: map['adminEmailRecipients'] == null ? null : ((map['adminEmailRecipients']! as List).cast<String>()).input(),
      requesterEmailRecipients: map['requesterEmailRecipients'] == null ? null : ((map['requesterEmailRecipients']! as List).cast<String>()).input(),
    );
  }
}

