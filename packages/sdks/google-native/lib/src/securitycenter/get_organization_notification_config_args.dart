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
  GetOrganizationNotificationConfigArgs({
    required pulumi.Output<String> notificationConfigId,
    required pulumi.Output<String> organizationId,
  }) :
      notificationConfigId = pulumi.Input.asInput<String>(notificationConfigId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationConfigId': notificationConfigId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationNotificationConfigArgs(
      notificationConfigId: pulumi.Output.create<String>(map['notificationConfigId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

