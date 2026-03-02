// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_release_channel_setting_release_channel_setting_args_doc}
/// The set of arguments for ReleaseChannelSetting.
/// {@endtemplate}
/// {@macro pulumi_gemini_release_channel_setting_release_channel_setting_args_doc}
class ReleaseChannelSettingArgs {
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Release channel to be used.
  /// Possible values:
  /// STABLE
  /// EXPERIMENTAL
  final pulumi.Input<String>? releaseChannel;
  /// Id of the Release Channel Setting.
  final pulumi.Input<String> releaseChannelSettingId;

  /// Creates a new [ReleaseChannelSettingArgs].
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseChannel] Release channel to be used.
  /// [releaseChannelSettingId] Id of the Release Channel Setting.
  ReleaseChannelSettingArgs({
    this.labels,
    required this.location,
    this.project,
    this.releaseChannel,
    required this.releaseChannelSettingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'releaseChannel': ?releaseChannel,
      'releaseChannelSettingId': releaseChannelSettingId,
    };
  }

  factory ReleaseChannelSettingArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelSettingArgs(
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      releaseChannel: map['releaseChannel'] == null ? null : (map['releaseChannel'] as String).input(),
      releaseChannelSettingId: (map['releaseChannelSettingId'] as String).input(),
    );
  }
}

