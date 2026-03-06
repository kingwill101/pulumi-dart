// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_organization_notification_config_args_doc}
/// Arguments for getOrganizationNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_organization_notification_config_args_doc}
class GetOrganizationNotificationConfigArgs {
  final pulumi.Input<String> notificationConfigId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationNotificationConfigArgs].
  /// [notificationConfigId] Required.
  /// [organizationId] Required.
  const GetOrganizationNotificationConfigArgs({
    required this.notificationConfigId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationConfigId': notificationConfigId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationNotificationConfigArgs(
      notificationConfigId: pulumi.Input.fromValue(map['notificationConfigId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

