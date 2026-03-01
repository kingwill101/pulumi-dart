// ignore_for_file: unused_element, unnecessary_cast


/// The governance email weekly notification configuration.
class GovernanceEmailNotification {
  /// Exclude manager from weekly email notification.
  final bool? disableManagerEmailNotification;
  /// Exclude  owner from weekly email notification.
  final bool? disableOwnerEmailNotification;

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
      disableManagerEmailNotification: map['disableManagerEmailNotification'] == null ? null : map['disableManagerEmailNotification'] as bool,
      disableOwnerEmailNotification: map['disableOwnerEmailNotification'] == null ? null : map['disableOwnerEmailNotification'] as bool,
    );
  }
}

