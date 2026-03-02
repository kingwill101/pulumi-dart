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
    required this.dataSharingWithGoogleSettingId,
    this.enableDataSharing,
    this.enablePreviewDataSharing,
    this.labels,
    this.location,
    this.project,
  });

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
      dataSharingWithGoogleSettingId: (map['dataSharingWithGoogleSettingId'] as String).input(),
      enableDataSharing: map['enableDataSharing'] == null ? null : (map['enableDataSharing'] as bool).input(),
      enablePreviewDataSharing: map['enablePreviewDataSharing'] == null ? null : (map['enablePreviewDataSharing'] as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

