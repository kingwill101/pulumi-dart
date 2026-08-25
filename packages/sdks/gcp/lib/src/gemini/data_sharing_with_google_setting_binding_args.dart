// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_data_sharing_with_google_setting_binding_data_sharing_with_google_setting_binding_args_doc}
/// The set of arguments for DataSharingWithGoogleSettingBinding.
/// {@endtemplate}
/// {@macro pulumi_gemini_data_sharing_with_google_setting_binding_data_sharing_with_google_setting_binding_args_doc}
class DataSharingWithGoogleSettingBindingArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> dataSharingWithGoogleSettingId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings) for a complete list.
  final pulumi.Input<String?>? product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Required. Id of the setting binding.
  final pulumi.Input<String> settingBindingId;
  /// Target of the binding.
  final pulumi.Input<String> target;

  /// Creates a new [DataSharingWithGoogleSettingBindingArgs].
  /// [dataSharingWithGoogleSettingId] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [product] Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings) for a complete list.
  /// [project] The ID of the project in which the resource belongs.
  /// [settingBindingId] Required. Id of the setting binding.
  /// [target] Target of the binding.
  const DataSharingWithGoogleSettingBindingArgs({
    required this.dataSharingWithGoogleSettingId,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      dataSharingWithGoogleSettingId: pulumi.Input.fromValue(map['dataSharingWithGoogleSettingId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settingBindingId: pulumi.Input.fromValue(map['settingBindingId'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
