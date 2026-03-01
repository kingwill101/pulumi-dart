// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_notification_channel_get_notification_channel_args_doc}
/// Arguments for getNotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_notification_channel_get_notification_channel_args_doc}
class GetNotificationChannelArgs {
  /// The display name for this notification channel.
  final pulumi.Input<String>? displayName;
  /// Labels (corresponding to the
  /// NotificationChannelDescriptor schema) to filter the notification channels by.
  final pulumi.Input<Map<String, String>>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of the notification channel.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final pulumi.Input<String>? type;
  /// User-provided key-value labels to filter by.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [GetNotificationChannelArgs].
  /// [displayName] The display name for this notification channel.
  /// [labels] Labels (corresponding to the
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of the notification channel.
  /// [userLabels] User-provided key-value labels to filter by.
  GetNotificationChannelArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? project,
    pulumi.Output<String>? type,
    pulumi.Output<Map<String, String>>? userLabels,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<String>(type),
      userLabels = pulumi.Input.asOptionalInput<Map<String, String>>(userLabels);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'labels': ?labels,
      'project': ?project,
      'type': ?type,
      'userLabels': ?userLabels,
    };
  }

  factory GetNotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      userLabels: map['userLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['userLabels'] as Map).cast<String, String>()),
    );
  }
}

