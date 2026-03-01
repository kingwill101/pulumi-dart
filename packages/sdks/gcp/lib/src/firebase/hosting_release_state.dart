// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostingRelease resources.
class HostingReleaseState {
  /// The ID of the channel to which the release belongs. If not provided, the release will
  /// belong to the default "live" channel
  final pulumi.Input<String>? channelId;
  /// The deploy description when the release was created. The value can be up to 512 characters.
  final pulumi.Input<String>? message;
  /// The unique identifier for the release, in either of the following formats:
  /// sites/SITE_ID/releases/RELEASE_ID
  /// sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID
  final pulumi.Input<String>? name;
  /// The unique identifier for the Release.
  final pulumi.Input<String>? releaseId;
  /// Required. The ID of the site to which the release belongs.
  final pulumi.Input<String>? siteId;
  /// The type of the release; indicates what happened to the content of the site. There is no need to specify
  /// `DEPLOY` or `ROLLBACK` type if a `version_name` is provided.
  /// DEPLOY: A version was uploaded to Firebase Hosting and released. Output only.
  /// ROLLBACK: The release points back to a previously deployed version. Output only.
  /// SITE_DISABLE: The release prevents the site from serving content. Firebase Hosting acts as if the site never existed
  /// Possible values are: `DEPLOY`, `ROLLBACK`, `SITE_DISABLE`.
  final pulumi.Input<String>? type;
  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
  /// The content of the version specified will be actively displayed on the appropriate URL.
  /// The Version must belong to the same site as in the `site_id`.
  /// This parameter must be empty if the `type` of the release is `SITE_DISABLE`.
  final pulumi.Input<String>? versionName;

  /// Creates a new [HostingReleaseState].
  /// [channelId] The ID of the channel to which the release belongs. If not provided, the release will
  /// [message] The deploy description when the release was created. The value can be up to 512 characters.
  /// [name] The unique identifier for the release, in either of the following formats:
  /// [releaseId] The unique identifier for the Release.
  /// [siteId] Required. The ID of the site to which the release belongs.
  /// [type] The type of the release; indicates what happened to the content of the site. There is no need to specify
  /// [versionName] The unique identifier for a version, in the format: sites/SITE_ID/versions/VERSION_ID.
  HostingReleaseState({
    pulumi.Output<String>? channelId,
    pulumi.Output<String>? message,
    pulumi.Output<String>? name,
    pulumi.Output<String>? releaseId,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? type,
    pulumi.Output<String>? versionName,
  }) :
      channelId = pulumi.Input.asOptionalInput<String>(channelId),
      message = pulumi.Input.asOptionalInput<String>(message),
      name = pulumi.Input.asOptionalInput<String>(name),
      releaseId = pulumi.Input.asOptionalInput<String>(releaseId),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      type = pulumi.Input.asOptionalInput<String>(type),
      versionName = pulumi.Input.asOptionalInput<String>(versionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': ?channelId,
      'message': ?message,
      'name': ?name,
      'releaseId': ?releaseId,
      'siteId': ?siteId,
      'type': ?type,
      'versionName': ?versionName,
    };
  }

  factory HostingReleaseState.fromMap(Map<String, dynamic> map) {
    return HostingReleaseState(
      channelId: map['channelId'] == null ? null : pulumi.Output.create<String>(map['channelId'] as String),
      message: map['message'] == null ? null : pulumi.Output.create<String>(map['message'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      releaseId: map['releaseId'] == null ? null : pulumi.Output.create<String>(map['releaseId'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      versionName: map['versionName'] == null ? null : pulumi.Output.create<String>(map['versionName'] as String),
    );
  }
}

