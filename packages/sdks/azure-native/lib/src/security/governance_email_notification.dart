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
  const GovernanceEmailNotification({
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
      disableManagerEmailNotification: (() { final guardedValue = map['disableManagerEmailNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableOwnerEmailNotification: (() { final guardedValue = map['disableOwnerEmailNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

