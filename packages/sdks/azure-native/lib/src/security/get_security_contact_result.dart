// ignore_for_file: unused_element, unnecessary_cast

import 'security_contact_properties_notifications_by_role_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecurityContact.
class GetSecurityContactResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of email addresses which will get notifications from Microsoft Defender for Cloud by the configurations defined in this security contact.
  final String? emails;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Indicates whether the security contact is enabled.
  final bool? isEnabled;
  /// The name of the resource
  final String? name;
  /// Defines whether to send email notifications from Microsoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  final SecurityContactPropertiesNotificationsByRoleResponse? notificationsByRole;
  /// A collection of sources types which evaluate the email notification.
  final List<dynamic>? notificationsSources;
  /// The security contact's phone number
  final String? phone;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSecurityContactResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [emails] List of email addresses which will get notifications from Microsoft Defender for Cloud by the configurations defined in this security contact.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isEnabled] Indicates whether the security contact is enabled.
  /// [name] The name of the resource
  /// [notificationsByRole] Defines whether to send email notifications from Microsoft Defender for Cloud to persons with specific RBAC roles on the subscription.
  /// [notificationsSources] A collection of sources types which evaluate the email notification.
  /// [phone] The security contact's phone number
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSecurityContactResult({
    this.azureApiVersion,
    this.emails,
    this.id,
    this.isEnabled,
    this.name,
    this.notificationsByRole,
    this.notificationsSources,
    this.phone,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'emails': ?emails,
      'id': ?id,
      'isEnabled': ?isEnabled,
      'name': ?name,
      'notificationsByRole': ?notificationsByRole?.toMap(),
      'notificationsSources': ?notificationsSources,
      'phone': ?phone,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSecurityContactResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityContactResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationsByRole: (() { final guardedValue = map['notificationsByRole']; if (guardedValue == null) return null; return SecurityContactPropertiesNotificationsByRoleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      notificationsSources: (() { final guardedValue = map['notificationsSources']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
