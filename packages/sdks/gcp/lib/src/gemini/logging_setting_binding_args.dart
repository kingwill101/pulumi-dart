// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_logging_setting_binding_logging_setting_binding_args_doc}
/// The set of arguments for LoggingSettingBinding.
/// {@endtemplate}
/// {@macro pulumi_gemini_logging_setting_binding_logging_setting_binding_args_doc}
class LoggingSettingBindingArgs {
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> loggingSettingId;
  /// Product type of the setting binding.
  /// Possible values are: `GEMINI_CODE_ASSIST`.
  final pulumi.Input<String>? product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Id of the setting binding.
  final pulumi.Input<String> settingBindingId;
  /// Target of the binding.
  final pulumi.Input<String> target;

  /// Creates a new [LoggingSettingBindingArgs].
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [loggingSettingId] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [product] Product type of the setting binding.
  /// [project] The ID of the project in which the resource belongs.
  /// [settingBindingId] Id of the setting binding.
  /// [target] Target of the binding.
  LoggingSettingBindingArgs({
    this.labels,
    this.location,
    required this.loggingSettingId,
    this.product,
    this.project,
    required this.settingBindingId,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'loggingSettingId': loggingSettingId,
      'product': ?product,
      'project': ?project,
      'settingBindingId': settingBindingId,
      'target': target,
    };
  }

  factory LoggingSettingBindingArgs.fromMap(Map<String, dynamic> map) {
    return LoggingSettingBindingArgs(
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      loggingSettingId: (map['loggingSettingId'] as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      settingBindingId: (map['settingBindingId'] as String).input(),
      target: (map['target'] as String).input(),
    );
  }
}

