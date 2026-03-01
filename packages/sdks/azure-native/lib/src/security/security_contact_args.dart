// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notifications_source_alert.dart';
import 'security_contact_properties_notifications_by_role.dart';

/// {@template pulumi_security_security_contact_args_doc}
/// The set of arguments for SecurityContact.
/// {@endtemplate}
/// {@macro pulumi_security_security_contact_args_doc}
class SecurityContactArgs {
  /// List of email addresses which will get notifications from Microsoft Defender for Cloud by the configurations defined in this security contact.
  final pulumi.Input<String>? emails;
  /// Indicates whether the security contact is enabled.
  final pulumi.Input<bool>? isEnabled;
  /// Defines whether to send email notifications from Microsoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  final pulumi.Input<SecurityContactPropertiesNotificationsByRole>? notificationsByRole;
  /// A collection of sources types which evaluate the email notification.
  final pulumi.Input<List<NotificationsSourceAlert>>? notificationsSources;
  /// The security contact's phone number
  final pulumi.Input<String>? phone;
  /// Name of the security contact object
  final pulumi.Input<String>? securityContactName;

  /// Creates a new [SecurityContactArgs].
  /// [emails] List of email addresses which will get notifications from Microsoft Defender for Cloud by the configurations defined in this security contact.
  /// [isEnabled] Indicates whether the security contact is enabled.
  /// [notificationsByRole] Defines whether to send email notifications from Microsoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  /// [notificationsSources] A collection of sources types which evaluate the email notification.
  /// [phone] The security contact's phone number
  /// [securityContactName] Name of the security contact object
  SecurityContactArgs({
    pulumi.Output<String>? emails,
    pulumi.Output<bool>? isEnabled,
    pulumi.Output<SecurityContactPropertiesNotificationsByRole>? notificationsByRole,
    pulumi.Output<List<NotificationsSourceAlert>>? notificationsSources,
    pulumi.Output<String>? phone,
    pulumi.Output<String>? securityContactName,
  }) :
      emails = pulumi.Input.asOptionalInput<String>(emails),
      isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
      notificationsByRole = pulumi.Input.asOptionalInput<SecurityContactPropertiesNotificationsByRole>(notificationsByRole),
      notificationsSources = pulumi.Input.asOptionalInput<List<NotificationsSourceAlert>>(notificationsSources),
      phone = pulumi.Input.asOptionalInput<String>(phone),
      securityContactName = pulumi.Input.asOptionalInput<String>(securityContactName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'isEnabled': ?isEnabled,
      'notificationsByRole': ?pulumi.Input.mapOptionalInputValue<SecurityContactPropertiesNotificationsByRole, Map<String, dynamic>>(notificationsByRole, (value) => value.toMap()),
      'notificationsSources': ?pulumi.Input.mapOptionalInputValue<List<NotificationsSourceAlert>, List<Map<String, dynamic>>>(notificationsSources, (value) => pulumi.Input.encodeList<NotificationsSourceAlert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'phone': ?phone,
      'securityContactName': ?securityContactName,
    };
  }

  factory SecurityContactArgs.fromMap(Map<String, dynamic> map) {
    return SecurityContactArgs(
      emails: map['emails'] == null ? null : pulumi.Output.create<String>(map['emails'] as String),
      isEnabled: map['isEnabled'] == null ? null : pulumi.Output.create<bool>(map['isEnabled'] as bool),
      notificationsByRole: map['notificationsByRole'] == null ? null : pulumi.Output.create<SecurityContactPropertiesNotificationsByRole>(SecurityContactPropertiesNotificationsByRole.fromMap((map['notificationsByRole'] as Map).cast<String, dynamic>())),
      notificationsSources: map['notificationsSources'] == null ? null : pulumi.Output.create<List<NotificationsSourceAlert>>(pulumi.Input.decodeList<NotificationsSourceAlert>(map['notificationsSources'], (value) => NotificationsSourceAlert.fromMap((value as Map).cast<String, dynamic>()))),
      phone: map['phone'] == null ? null : pulumi.Output.create<String>(map['phone'] as String),
      securityContactName: map['securityContactName'] == null ? null : pulumi.Output.create<String>(map['securityContactName'] as String),
    );
  }
}

