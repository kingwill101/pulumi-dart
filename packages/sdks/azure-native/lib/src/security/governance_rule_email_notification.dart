// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The governance email weekly notification configuration
class GovernanceRuleEmailNotification {
  /// Defines whether manager email notifications are disabled
  final pulumi.Input<bool>? disableManagerEmailNotification;
  /// Defines whether owner email notifications are disabled
  final pulumi.Input<bool>? disableOwnerEmailNotification;

  /// Creates a new [GovernanceRuleEmailNotification].
  /// [disableManagerEmailNotification] Defines whether manager email notifications are disabled
  /// [disableOwnerEmailNotification] Defines whether owner email notifications are disabled
  GovernanceRuleEmailNotification({
    this.disableManagerEmailNotification,
    this.disableOwnerEmailNotification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableManagerEmailNotification': ?disableManagerEmailNotification,
      'disableOwnerEmailNotification': ?disableOwnerEmailNotification,
    };
  }

  factory GovernanceRuleEmailNotification.fromMap(Map<String, dynamic> map) {
    return GovernanceRuleEmailNotification(
      disableManagerEmailNotification: map['disableManagerEmailNotification'] == null ? null : (map['disableManagerEmailNotification'] as bool).input(),
      disableOwnerEmailNotification: map['disableOwnerEmailNotification'] == null ? null : (map['disableOwnerEmailNotification'] as bool).input(),
    );
  }
}

