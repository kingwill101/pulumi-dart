// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_type.dart';

/// {@template pulumi_firebasehosting_v1beta1_release_args_doc}
/// The set of arguments for Release.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_release_args_doc}
class ReleaseArgs {
  final pulumi.Input<String> channelId;
  /// The deploy description when the release was created. The value can be up to 512 characters.
  final pulumi.Input<String>? message;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;
  /// Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
  final pulumi.Input<ReleaseType>? type;
  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in the `parent` parameter. This query parameter must be empty if the `type` field in the request body is `SITE_DISABLE`.
  final pulumi.Input<String>? versionName;

  /// Creates a new [ReleaseArgs].
  /// [channelId] Required.
  /// [message] The deploy description when the release was created. The value can be up to 512 characters.
  /// [project] Optional.
  /// [siteId] Required.
  /// [type] Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
  /// [versionName] The unique identifier for a version, in the format: sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in the `parent` parameter. This query parameter must be empty if the `type` field in the request body is `SITE_DISABLE`.
  ReleaseArgs({
    required this.channelId,
    this.message,
    this.project,
    required this.siteId,
    this.type,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'message': ?message,
      'project': ?project,
      'siteId': siteId,
      'type': ?pulumi.Input.mapOptionalInputValue<ReleaseType, String>(type, (value) => value.value),
      'versionName': ?versionName,
    };
  }

  factory ReleaseArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseArgs(
      channelId: (map['channelId'] as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      siteId: (map['siteId'] as String).input(),
      type: map['type'] == null ? null : (ReleaseType.fromValue(map['type']! as String)).input(),
      versionName: map['versionName'] == null ? null : (map['versionName']! as String).input(),
    );
  }
}

