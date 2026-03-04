import 'package:pulumi/pulumi.dart' as pulumi;
import 'mutation_record_response.dart';
import 'notification_channel_args.dart';

/// Creates a new notification channel, representing a single notification endpoint such as an email address, SMS number, or PagerDuty service.Design your application to single-thread API calls that modify the state of notification channels in a single project. This includes calls to CreateNotificationChannel, DeleteNotificationChannel and UpdateNotificationChannel.
class NotificationChannel extends pulumi.CustomResource {
  /// Record of the creation of this channel.
  late final pulumi.Output<MutationRecordResponse> creationRecord;

  /// An optional human-readable description of this notification channel. This description may provide additional details, beyond the display name, for the channel. This may not exceed 1024 Unicode characters.
  late final pulumi.Output<String> description;

  /// An optional human-readable name for this notification channel. It is recommended that you specify a non-empty and unique name in order to make it easier to identify the channels in your project, though this is not enforced. The display name is limited to 512 Unicode characters.
  late final pulumi.Output<String> displayName;

  /// Whether notifications are forwarded to the described channel. This makes it possible to disable delivery of notifications to a particular channel without removing the channel from all alerting policies that reference the channel. This is a more convenient approach when the change is temporary and you want to receive notifications from the same set of alerting policies on the channel at some point in the future.
  late final pulumi.Output<bool> enabled;

  /// Configuration fields that define the channel and its behavior. The permissible and required labels are specified in the NotificationChannelDescriptor.labels of the NotificationChannelDescriptor corresponding to the type field.
  late final pulumi.Output<Map<String, String>> labels;

  /// Records of the modification of this channel.
  late final pulumi.Output<List<Map<String, dynamic>>> mutationRecords;

  /// The full REST resource name for this channel. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is automatically assigned by the server on creation.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The type of the notification channel. This field matches the value of the NotificationChannelDescriptor.type field.
  late final pulumi.Output<String> type;

  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field. This field is intended to be used for organizing and identifying the NotificationChannel objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  late final pulumi.Output<Map<String, String>> userLabels;

  /// Indicates whether this channel has been verified or not. On a ListNotificationChannels or GetNotificationChannel operation, this field is expected to be populated.If the value is UNVERIFIED, then it indicates that the channel is non-functioning (it both requires verification and lacks verification); otherwise, it is assumed that the channel works.If the channel is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type that does not require verification or that this specific channel has been exempted from verification because it was created prior to verification being required for channels of this type.This field cannot be modified using a standard UpdateNotificationChannel operation. To change the value of this field, you must call VerifyNotificationChannel.
  late final pulumi.Output<String> verificationStatus;

  /// Creates a new [NotificationChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationChannel]. {@macro pulumi_monitoring_v3_notification_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationChannel(
    String name, {
    NotificationChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:monitoring/v3:NotificationChannel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationRecord = registerOutput<MutationRecordResponse>('creationRecord');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    enabled = registerOutput<bool>('enabled');
    labels = registerOutput<Map<String, String>>('labels');
    mutationRecords = registerOutput<List<Map<String, dynamic>>>(
      'mutationRecords',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
    userLabels = registerOutput<Map<String, String>>('userLabels');
    verificationStatus = registerOutput<String>('verificationStatus');
  }
}
