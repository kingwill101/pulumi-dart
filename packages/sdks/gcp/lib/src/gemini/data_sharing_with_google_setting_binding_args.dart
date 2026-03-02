// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_data_sharing_with_google_setting_binding_data_sharing_with_google_setting_binding_args_doc}
/// The set of arguments for DataSharingWithGoogleSettingBinding.
/// {@endtemplate}
/// {@macro pulumi_gemini_data_sharing_with_google_setting_binding_data_sharing_with_google_setting_binding_args_doc}
class DataSharingWithGoogleSettingBindingArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> dataSharingWithGoogleSettingId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings) for a complete list.
  final pulumi.Input<String>? product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Id of the setting binding.
  final pulumi.Input<String> settingBindingId;
  /// Target of the binding.
  final pulumi.Input<String> target;

  /// Creates a new [DataSharingWithGoogleSettingBindingArgs].
  /// [dataSharingWithGoogleSettingId] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [product] Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings) for a complete list.
  /// [project] The ID of the project in which the resource belongs.
  /// [settingBindingId] Required. Id of the setting binding.
  /// [target] Target of the binding.
  DataSharingWithGoogleSettingBindingArgs({
    required this.dataSharingWithGoogleSettingId,
    this.labels,
    this.location,
    this.product,
    this.project,
    required this.settingBindingId,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSharingWithGoogleSettingId': dataSharingWithGoogleSettingId,
      'labels': ?labels,
      'location': ?location,
      'product': ?product,
      'project': ?project,
      'settingBindingId': settingBindingId,
      'target': target,
    };
  }

  factory DataSharingWithGoogleSettingBindingArgs.fromMap(Map<String, dynamic> map) {
    return DataSharingWithGoogleSettingBindingArgs(
      dataSharingWithGoogleSettingId: (map['dataSharingWithGoogleSettingId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      settingBindingId: (map['settingBindingId'] as String).input(),
      target: (map['target'] as String).input(),
    );
  }
}

