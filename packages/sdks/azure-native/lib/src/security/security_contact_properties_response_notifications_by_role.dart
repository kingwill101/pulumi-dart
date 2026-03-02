// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines whether to send email notifications from Microsoft Defender for Cloud to persons with specific RBAC roles on the subscription.
class SecurityContactPropertiesResponseNotificationsByRole {
  /// Defines which RBAC roles will get email notifications from Microsoft Defender for Cloud. List of allowed RBAC roles:
  final pulumi.Input<List<String>>? roles;
  /// Defines whether to send email notifications from AMicrosoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  final pulumi.Input<String>? state;

  /// Creates a new [SecurityContactPropertiesResponseNotificationsByRole].
  /// [roles] Defines which RBAC roles will get email notifications from Microsoft Defender for Cloud. List of allowed RBAC roles:
  /// [state] Defines whether to send email notifications from AMicrosoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  SecurityContactPropertiesResponseNotificationsByRole({
    this.roles,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?roles,
      'state': ?state,
    };
  }

  factory SecurityContactPropertiesResponseNotificationsByRole.fromMap(Map<String, dynamic> map) {
    return SecurityContactPropertiesResponseNotificationsByRole(
      roles: map['roles'] == null ? null : ((map['roles']! as List).cast<String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

