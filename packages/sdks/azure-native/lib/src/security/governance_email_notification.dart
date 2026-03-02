// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The governance email weekly notification configuration.
class GovernanceEmailNotification {
  /// Exclude manager from weekly email notification.
  final pulumi.Input<bool>? disableManagerEmailNotification;
  /// Exclude  owner from weekly email notification.
  final pulumi.Input<bool>? disableOwnerEmailNotification;

  /// Creates a new [GovernanceEmailNotification].
  /// [disableManagerEmailNotification] Exclude manager from weekly email notification.
  /// [disableOwnerEmailNotification] Exclude  owner from weekly email notification.
  GovernanceEmailNotification({
    this.disableManagerEmailNotification,
    this.disableOwnerEmailNotification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableManagerEmailNotification': ?disableManagerEmailNotification,
      'disableOwnerEmailNotification': ?disableOwnerEmailNotification,
    };
  }

  factory GovernanceEmailNotification.fromMap(Map<String, dynamic> map) {
    return GovernanceEmailNotification(
      disableManagerEmailNotification: map['disableManagerEmailNotification'] == null ? null : (map['disableManagerEmailNotification'] as bool).input(),
      disableOwnerEmailNotification: map['disableOwnerEmailNotification'] == null ? null : (map['disableOwnerEmailNotification'] as bool).input(),
    );
  }
}

