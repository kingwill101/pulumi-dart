// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines whether to send email notifications from Microsoft Defender for Cloud to persons with specific RBAC roles on the subscription.
class SecurityContactPropertiesNotificationsByRole {
  /// Defines which RBAC roles will get email notifications from Microsoft Defender for Cloud. List of allowed RBAC roles:
  final pulumi.Input<List<String>>? roles;
  /// Defines whether to send email notifications from AMicrosoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  final pulumi.Input<String>? state;

  /// Creates a new [SecurityContactPropertiesNotificationsByRole].
  /// [roles] Defines which RBAC roles will get email notifications from Microsoft Defender for Cloud. List of allowed RBAC roles:
  /// [state] Defines whether to send email notifications from AMicrosoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  const SecurityContactPropertiesNotificationsByRole({
    this.roles,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?roles,
      'state': ?state,
    };
  }

  factory SecurityContactPropertiesNotificationsByRole.fromMap(Map<String, dynamic> map) {
    return SecurityContactPropertiesNotificationsByRole(
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

