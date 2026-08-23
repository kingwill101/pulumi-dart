// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_data_sharing_with_google_setting_data_sharing_with_google_setting_args_doc}
/// The set of arguments for DataSharingWithGoogleSetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_data_sharing_with_google_setting_data_sharing_with_google_setting_args_doc}
class DataSharingWithGoogleSettingArgs {
  /// Id of the Data Sharing With Google Setting.
  final pulumi.Input<String> dataSharingWithGoogleSettingId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether data sharing should be enabled in GA products.
  final pulumi.Input<bool>? enableDataSharing;
  /// Whether data sharing should be enabled in Preview products.
  final pulumi.Input<bool>? enablePreviewDataSharing;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DataSharingWithGoogleSettingArgs].
  /// [dataSharingWithGoogleSettingId] Id of the Data Sharing With Google Setting.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [enableDataSharing] Whether data sharing should be enabled in GA products.
  /// [enablePreviewDataSharing] Whether data sharing should be enabled in Preview products.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const DataSharingWithGoogleSettingArgs({
    required this.dataSharingWithGoogleSettingId,
    this.deletionPolicy,
    this.enableDataSharing,
    this.enablePreviewDataSharing,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSharingWithGoogleSettingId': dataSharingWithGoogleSettingId,
      'deletionPolicy': ?deletionPolicy,
      'enableDataSharing': ?enableDataSharing,
      'enablePreviewDataSharing': ?enablePreviewDataSharing,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory DataSharingWithGoogleSettingArgs.fromMap(Map<String, dynamic> map) {
    return DataSharingWithGoogleSettingArgs(
      dataSharingWithGoogleSettingId: pulumi.Input.fromValue(map['dataSharingWithGoogleSettingId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDataSharing: (() { final guardedValue = map['enableDataSharing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePreviewDataSharing: (() { final guardedValue = map['enablePreviewDataSharing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
