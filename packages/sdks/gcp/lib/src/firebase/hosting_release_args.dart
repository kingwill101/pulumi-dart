// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_hosting_release_hosting_release_args_doc}
/// The set of arguments for HostingRelease.
/// {@endtemplate}
/// {@macro pulumi_firebase_hosting_release_hosting_release_args_doc}
class HostingReleaseArgs {
  /// The ID of the channel to which the release belongs. If not provided, the release will
  /// belong to the default "live" channel
  final pulumi.Input<String>? channelId;
  /// The deploy description when the release was created. The value can be up to 512 characters.
  final pulumi.Input<String>? message;
  /// Required. The ID of the site to which the release belongs.
  final pulumi.Input<String> siteId;
  /// The type of the release; indicates what happened to the content of the site. There is no need to specify
  /// `DEPLOY` or `ROLLBACK` type if a `versionName` is provided.
  /// DEPLOY: A version was uploaded to Firebase Hosting and released. Output only.
  /// ROLLBACK: The release points back to a previously deployed version. Output only.
  /// SITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed
  /// Possible values are: `DEPLOY`, `ROLLBACK`, `SITE_DISABLE`.
  final pulumi.Input<String>? type;
  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
  /// The content of the version specified will be actively displayed on the appropriate URL.
  /// The Version must belong to the same site as in the `siteId`.
  /// This parameter must be empty if the `type` of the release is `SITE_DISABLE`.
  final pulumi.Input<String>? versionName;

  /// Creates a new [HostingReleaseArgs].
  /// [channelId] The ID of the channel to which the release belongs. If not provided, the release will
  /// [message] The deploy description when the release was created. The value can be up to 512 characters.
  /// [siteId] Required. The ID of the site to which the release belongs.
  /// [type] The type of the release; indicates what happened to the content of the site. There is no need to specify
  /// [versionName] The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
  const HostingReleaseArgs({
    this.channelId,
    this.message,
    required this.siteId,
    this.type,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': ?channelId,
      'message': ?message,
      'siteId': siteId,
      'type': ?type,
      'versionName': ?versionName,
    };
  }

  factory HostingReleaseArgs.fromMap(Map<String, dynamic> map) {
    return HostingReleaseArgs(
      channelId: (() { final guardedValue = map['channelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
