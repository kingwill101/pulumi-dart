// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notifications_source_alert_response.dart';
import 'security_contact_properties_response_notifications_by_role.dart';

/// Result data returned by getSecurityContact.
class GetSecurityContactResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of email addresses which will get notifications from Microsoft Defender for Cloud by the configurations defined in this security contact.
  final String? emails;
  /// Resource Id
  final String id;
  /// Indicates whether the security contact is enabled.
  final bool? isEnabled;
  /// Resource name
  final String name;
  /// Defines whether to send email notifications from Microsoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  final SecurityContactPropertiesResponseNotificationsByRole? notificationsByRole;
  /// A collection of sources types which evaluate the email notification.
  final List<NotificationsSourceAlertResponse>? notificationsSources;
  /// The security contact's phone number
  final String? phone;
  /// Resource type
  final String type;

  /// Creates a new [GetSecurityContactResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [emails] List of email addresses which will get notifications from Microsoft Defender for Cloud by the configurations defined in this security contact.
  /// [id] Resource Id
  /// [isEnabled] Indicates whether the security contact is enabled.
  /// [name] Resource name
  /// [notificationsByRole] Defines whether to send email notifications from Microsoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  /// [notificationsSources] A collection of sources types which evaluate the email notification.
  /// [phone] The security contact's phone number
  /// [type] Resource type
  const GetSecurityContactResult({
    required this.azureApiVersion,
    this.emails,
    required this.id,
    this.isEnabled,
    required this.name,
    this.notificationsByRole,
    this.notificationsSources,
    this.phone,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'emails': ?emails,
      'id': id,
      'isEnabled': ?isEnabled,
      'name': name,
      'notificationsByRole': ?notificationsByRole?.toMap(),
      'notificationsSources': ?(() { final guardedValue = notificationsSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<NotificationsSourceAlertResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'phone': ?phone,
      'type': type,
    };
  }

  factory GetSecurityContactResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityContactResult(
      azureApiVersion: map['azureApiVersion'] as String,
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      notificationsByRole: (() { final guardedValue = map['notificationsByRole']; if (guardedValue == null) return null; return SecurityContactPropertiesResponseNotificationsByRole.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      notificationsSources: (() { final guardedValue = map['notificationsSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NotificationsSourceAlertResponse>(guardedValue, (value) => NotificationsSourceAlertResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

