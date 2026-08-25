// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_release_channel_setting_release_channel_setting_args_doc}
/// The set of arguments for ReleaseChannelSetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_release_channel_setting_release_channel_setting_args_doc}
class ReleaseChannelSettingArgs {
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
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Release channel to be used.
  /// Possible values:
  /// STABLE
  /// EXPERIMENTAL
  final pulumi.Input<String?>? releaseChannel;
  /// Id of the Release Channel Setting.
  final pulumi.Input<String> releaseChannelSettingId;

  /// Creates a new [ReleaseChannelSettingArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseChannel] Release channel to be used.
  /// [releaseChannelSettingId] Id of the Release Channel Setting.
  const ReleaseChannelSettingArgs({
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.project,
    this.releaseChannel,
    required this.releaseChannelSettingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'releaseChannel': ?releaseChannel,
      'releaseChannelSettingId': releaseChannelSettingId,
    };
  }

  factory ReleaseChannelSettingArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelSettingArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseChannel: (() { final guardedValue = map['releaseChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseChannelSettingId: pulumi.Input.fromValue(map['releaseChannelSettingId'] as String),
    );
  }
}
