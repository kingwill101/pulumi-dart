// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_sensitive_labels.dart';

/// Input properties used for looking up and filtering NotificationChannel resources.
class NotificationChannelState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  final pulumi.Input<String?>? description;
  /// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  final pulumi.Input<String?>? displayName;
  /// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  final pulumi.Input<bool?>? enabled;
  /// If true, the notification channel will be deleted regardless
  /// of its use in alert policies (the policies will be updated
  /// to remove the channel). If false, channels that are still
  /// referenced by an existing alerting policy will fail to be
  /// deleted in a delete operation.
  final pulumi.Input<bool?>? forceDelete;
  /// Configuration fields that define the channel and its behavior. The
  /// permissible and required labels are specified in the
  /// NotificationChannelDescriptor corresponding to the type field.
  /// Labels with sensitive data are obfuscated by the API and therefore the provider cannot
  /// determine if there are upstream changes to these fields. They can also be configured via
  /// the sensitiveLabels block, but cannot be configured in both places.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The full REST resource name for this channel. The syntax is:
  /// projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]
  /// The [CHANNEL_ID] is automatically assigned by the server on creation.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Different notification type behaviors are configured primarily using the the `labels` field on this
  /// resource. This block contains the labels which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: password, will be the key
  /// in the `labels` map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  final pulumi.Input<NotificationChannelSensitiveLabels?>? sensitiveLabels;
  /// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
  final pulumi.Input<String?>? type;
  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final pulumi.Input<Map<String, String>?>? userLabels;
  /// Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  final pulumi.Input<String?>? verificationStatus;

  /// Creates a new [NotificationChannelState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  /// [displayName] An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  /// [enabled] Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  /// [forceDelete] If true, the notification channel will be deleted regardless
  /// [labels] Configuration fields that define the channel and its behavior. The
  /// [name] The full REST resource name for this channel. The syntax is:
  /// [project] The ID of the project in which the resource belongs.
  /// [sensitiveLabels] Different notification type behaviors are configured primarily using the the `labels` field on this
  /// [type] The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
  /// [userLabels] User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  /// [verificationStatus] Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  const NotificationChannelState({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.enabled,
    this.forceDelete,
    this.labels,
    this.name,
    this.project,
    this.sensitiveLabels,
    this.type,
    this.userLabels,
    this.verificationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'forceDelete': ?forceDelete,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'sensitiveLabels': ?pulumi.Input.mapOptionalInputValue<NotificationChannelSensitiveLabels, Map<String, dynamic>>(sensitiveLabels, (value) => value.toMap()),
      'type': ?type,
      'userLabels': ?userLabels,
      'verificationStatus': ?verificationStatus,
    };
  }

  factory NotificationChannelState.fromMap(Map<String, dynamic> map) {
    return NotificationChannelState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sensitiveLabels: (() { final guardedValue = map['sensitiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationChannelSensitiveLabels.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      verificationStatus: (() { final guardedValue = map['verificationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
