// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_sensitive_labels.dart';

/// {@template pulumi_monitoring_notification_channel_notification_channel_args_doc}
/// The set of arguments for NotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_monitoring_notification_channel_notification_channel_args_doc}
class NotificationChannelArgs {
  /// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  final pulumi.Input<String>? description;
  /// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  final pulumi.Input<String>? displayName;
  /// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  final pulumi.Input<bool>? enabled;
  /// If true, the notification channel will be deleted regardless
  /// of its use in alert policies (the policies will be updated
  /// to remove the channel). If false, channels that are still
  /// referenced by an existing alerting policy will fail to be
  /// deleted in a delete operation.
  final pulumi.Input<bool>? forceDelete;
  /// Configuration fields that define the channel and its behavior. The
  /// permissible and required labels are specified in the
  /// NotificationChannelDescriptor corresponding to the type field.
  /// Labels with sensitive data are obfuscated by the API and therefore the provider cannot
  /// determine if there are upstream changes to these fields. They can also be configured via
  /// the sensitive_labels block, but cannot be configured in both places.
  final pulumi.Input<Map<String, String>>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Different notification type behaviors are configured primarily using the the `labels` field on this
  /// resource. This block contains the labels which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: password, will be the key
  /// in the `labels` map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  final pulumi.Input<NotificationChannelSensitiveLabels>? sensitiveLabels;
  /// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
  final pulumi.Input<String> type;
  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [NotificationChannelArgs].
  /// [description] An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  /// [displayName] An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  /// [enabled] Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  /// [forceDelete] If true, the notification channel will be deleted regardless
  /// [labels] Configuration fields that define the channel and its behavior. The
  /// [project] The ID of the project in which the resource belongs.
  /// [sensitiveLabels] Different notification type behaviors are configured primarily using the the `labels` field on this
  /// [type] The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field. See https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.notificationChannelDescriptors/list to get the list of valid values such as "email", "slack", etc...
  /// [userLabels] User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  NotificationChannelArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? project,
    pulumi.Output<NotificationChannelSensitiveLabels>? sensitiveLabels,
    required pulumi.Output<String> type,
    pulumi.Output<Map<String, String>>? userLabels,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project),
      sensitiveLabels = pulumi.Input.asOptionalInput<NotificationChannelSensitiveLabels>(sensitiveLabels),
      type = pulumi.Input.asInput<String>(type),
      userLabels = pulumi.Input.asOptionalInput<Map<String, String>>(userLabels);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'forceDelete': ?forceDelete,
      'labels': ?labels,
      'project': ?project,
      'sensitiveLabels': ?pulumi.Input.mapOptionalInputValue<NotificationChannelSensitiveLabels, Map<String, dynamic>>(sensitiveLabels, (value) => value.toMap()),
      'type': type,
      'userLabels': ?userLabels,
    };
  }

  factory NotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return NotificationChannelArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sensitiveLabels: map['sensitiveLabels'] == null ? null : pulumi.Output.create<NotificationChannelSensitiveLabels>(NotificationChannelSensitiveLabels.fromMap((map['sensitiveLabels'] as Map).cast<String, dynamic>())),
      type: pulumi.Output.create<String>(map['type'] as String),
      userLabels: map['userLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['userLabels'] as Map).cast<String, String>()),
    );
  }
}

