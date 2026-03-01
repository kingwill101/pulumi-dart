// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_email_notification_settings.dart';
import 'settings_service_account_approver_settings.dart';

/// Input properties used for looking up and filtering Settings resources.
class SettingsState {
  /// Create timestamp. Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? createTime;
  /// EmailNotificationSettings defines node-wide email notification preferences for various PAM events.
  /// Structure is documented below.
  final pulumi.Input<SettingsEmailNotificationSettings>? emailNotificationSettings;
  /// Fingerprint for optimistic concurrency returned in the response of GetSettings. Must be provided in the requests to UpdateSettings. If the value provided does not match the value known to the server, ABORTED will be thrown, and the client should retry the read-modify-write cycle.
  final pulumi.Input<String>? etag;
  /// The region of the PAM settings resource.
  final pulumi.Input<String>? location;
  /// Name of the settings resource. Possible formats:
  /// projects/{project-id|project-number}/locations/{location}/settings folders/{folder-number}/locations/{location}/settings organizations/{organization-number}/locations/{location}/settings
  final pulumi.Input<String>? name;
  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  final pulumi.Input<String>? parent;
  /// This controls the node-level settings for allowing service accounts as approvers.
  /// Structure is documented below.
  final pulumi.Input<SettingsServiceAccountApproverSettings>? serviceAccountApproverSettings;
  /// Update timestamp. Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SettingsState].
  /// [createTime] Create timestamp. Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  /// [emailNotificationSettings] EmailNotificationSettings defines node-wide email notification preferences for various PAM events.
  /// [etag] Fingerprint for optimistic concurrency returned in the response of GetSettings. Must be provided in the requests to UpdateSettings. If the value provided does not match the value known to the server, ABORTED will be thrown, and the client should retry the read-modify-write cycle.
  /// [location] The region of the PAM settings resource.
  /// [name] Name of the settings resource. Possible formats:
  /// [parent] Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  /// [serviceAccountApproverSettings] This controls the node-level settings for allowing service accounts as approvers.
  /// [updateTime] Update timestamp. Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  SettingsState({
    pulumi.Output<String>? createTime,
    pulumi.Output<SettingsEmailNotificationSettings>? emailNotificationSettings,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<SettingsServiceAccountApproverSettings>? serviceAccountApproverSettings,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      emailNotificationSettings = pulumi.Input.asOptionalInput<SettingsEmailNotificationSettings>(emailNotificationSettings),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      serviceAccountApproverSettings = pulumi.Input.asOptionalInput<SettingsServiceAccountApproverSettings>(serviceAccountApproverSettings),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'emailNotificationSettings': ?pulumi.Input.mapOptionalInputValue<SettingsEmailNotificationSettings, Map<String, dynamic>>(emailNotificationSettings, (value) => value.toMap()),
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'serviceAccountApproverSettings': ?pulumi.Input.mapOptionalInputValue<SettingsServiceAccountApproverSettings, Map<String, dynamic>>(serviceAccountApproverSettings, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory SettingsState.fromMap(Map<String, dynamic> map) {
    return SettingsState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      emailNotificationSettings: map['emailNotificationSettings'] == null ? null : pulumi.Output.create<SettingsEmailNotificationSettings>(SettingsEmailNotificationSettings.fromMap((map['emailNotificationSettings'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      serviceAccountApproverSettings: map['serviceAccountApproverSettings'] == null ? null : pulumi.Output.create<SettingsServiceAccountApproverSettings>(SettingsServiceAccountApproverSettings.fromMap((map['serviceAccountApproverSettings'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

