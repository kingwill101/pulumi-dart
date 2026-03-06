// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_release_channel_setting_binding_release_channel_setting_binding_args_doc}
/// The set of arguments for ReleaseChannelSettingBinding.
/// {@endtemplate}
/// {@macro pulumi_gemini_release_channel_setting_binding_release_channel_setting_binding_args_doc}
class ReleaseChannelSettingBindingArgs {
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Product type of the setting binding.
  /// Possible values are: `GEMINI_CLOUD_ASSIST`, `GEMINI_CODE_ASSIST`.
  final pulumi.Input<String>? product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> releaseChannelSettingId;
  /// Id of the setting binding.
  final pulumi.Input<String> settingBindingId;
  /// Target of the binding.
  final pulumi.Input<String> target;

  /// Creates a new [ReleaseChannelSettingBindingArgs].
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [product] Product type of the setting binding.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseChannelSettingId] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [settingBindingId] Id of the setting binding.
  /// [target] Target of the binding.
  const ReleaseChannelSettingBindingArgs({
    this.labels,
    this.location,
    this.product,
    this.project,
    required this.releaseChannelSettingId,
    required this.settingBindingId,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'product': ?product,
      'project': ?project,
      'releaseChannelSettingId': releaseChannelSettingId,
      'settingBindingId': settingBindingId,
      'target': target,
    };
  }

  factory ReleaseChannelSettingBindingArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelSettingBindingArgs(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseChannelSettingId: pulumi.Input.fromValue(map['releaseChannelSettingId'] as String),
      settingBindingId: pulumi.Input.fromValue(map['settingBindingId'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

