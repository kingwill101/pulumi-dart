// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_data_sharing_with_google_setting_data_sharing_with_google_setting_args_doc}
/// The set of arguments for DataSharingWithGoogleSetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_data_sharing_with_google_setting_data_sharing_with_google_setting_args_doc}
class DataSharingWithGoogleSettingArgs {
  /// Id of the Data Sharing With Google Setting.
  final pulumi.Input<String> dataSharingWithGoogleSettingId;
  /// Whether data sharing should be enabled in GA products.
  final pulumi.Input<bool>? enableDataSharing;
  /// Whether data sharing should be enabled in Preview products.
  final pulumi.Input<bool>? enablePreviewDataSharing;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DataSharingWithGoogleSettingArgs].
  /// [dataSharingWithGoogleSettingId] Id of the Data Sharing With Google Setting.
  /// [enableDataSharing] Whether data sharing should be enabled in GA products.
  /// [enablePreviewDataSharing] Whether data sharing should be enabled in Preview products.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  DataSharingWithGoogleSettingArgs({
    required pulumi.Output<String> dataSharingWithGoogleSettingId,
    pulumi.Output<bool>? enableDataSharing,
    pulumi.Output<bool>? enablePreviewDataSharing,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      dataSharingWithGoogleSettingId = pulumi.Input.asInput<String>(dataSharingWithGoogleSettingId),
      enableDataSharing = pulumi.Input.asOptionalInput<bool>(enableDataSharing),
      enablePreviewDataSharing = pulumi.Input.asOptionalInput<bool>(enablePreviewDataSharing),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSharingWithGoogleSettingId': dataSharingWithGoogleSettingId,
      'enableDataSharing': ?enableDataSharing,
      'enablePreviewDataSharing': ?enablePreviewDataSharing,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory DataSharingWithGoogleSettingArgs.fromMap(Map<String, dynamic> map) {
    return DataSharingWithGoogleSettingArgs(
      dataSharingWithGoogleSettingId: pulumi.Output.create<String>(map['dataSharingWithGoogleSettingId'] as String),
      enableDataSharing: map['enableDataSharing'] == null ? null : pulumi.Output.create<bool>(map['enableDataSharing'] as bool),
      enablePreviewDataSharing: map['enablePreviewDataSharing'] == null ? null : pulumi.Output.create<bool>(map['enablePreviewDataSharing'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

