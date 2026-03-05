// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_email_notification_settings.dart';
import 'settings_service_account_approver_settings.dart';

/// {@template pulumi_privilegedaccessmanager_settings_settings_args_doc}
/// The set of arguments for Settings.
/// {@endtemplate}
/// {@macro pulumi_privilegedaccessmanager_settings_settings_args_doc}
class SettingsArgs {
  /// EmailNotificationSettings defines node-wide email notification preferences for various PAM events.
  /// Structure is documented below.
  final pulumi.Input<SettingsEmailNotificationSettings>? emailNotificationSettings;
  /// The region of the PAM settings resource.
  final pulumi.Input<String> location;
  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  final pulumi.Input<String> parent;
  /// This controls the node-level settings for allowing service accounts as approvers.
  /// Structure is documented below.
  final pulumi.Input<SettingsServiceAccountApproverSettings>? serviceAccountApproverSettings;

  /// Creates a new [SettingsArgs].
  /// [emailNotificationSettings] EmailNotificationSettings defines node-wide email notification preferences for various PAM events.
  /// [location] The region of the PAM settings resource.
  /// [parent] Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  /// [serviceAccountApproverSettings] This controls the node-level settings for allowing service accounts as approvers.
  SettingsArgs({
    this.emailNotificationSettings,
    required this.location,
    required this.parent,
    this.serviceAccountApproverSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailNotificationSettings': ?pulumi.Input.mapOptionalInputValue<SettingsEmailNotificationSettings, Map<String, dynamic>>(emailNotificationSettings, (value) => value.toMap()),
      'location': location,
      'parent': parent,
      'serviceAccountApproverSettings': ?pulumi.Input.mapOptionalInputValue<SettingsServiceAccountApproverSettings, Map<String, dynamic>>(serviceAccountApproverSettings, (value) => value.toMap()),
    };
  }

  factory SettingsArgs.fromMap(Map<String, dynamic> map) {
    return SettingsArgs(
      emailNotificationSettings: (() { final guardedValue = map['emailNotificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsEmailNotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      serviceAccountApproverSettings: (() { final guardedValue = map['serviceAccountApproverSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsServiceAccountApproverSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

