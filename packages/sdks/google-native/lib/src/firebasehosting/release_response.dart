// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acting_user_response.dart';
import 'version_response.dart';

/// A `Release` is a particular [collection of configurations and files](sites.versions) that is set to be public at a particular time.
class ReleaseResponse {
  /// The deploy description when the release was created. The value can be up to 512 characters.
  final pulumi.Input<String> message;
  /// The unique identifier for the release, in either of the following formats: - sites/SITE_ID/releases/RELEASE_ID - sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID This name is provided in the response body when you call [`releases.create`](sites.releases/create) or [`channels.releases.create`](sites.channels.releases/create).
  final pulumi.Input<String> name;
  /// The time at which the version is set to be public.
  final pulumi.Input<String> releaseTime;
  /// Identifies the user who created the release.
  final pulumi.Input<ActingUserResponse> releaseUser;
  /// Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
  final pulumi.Input<String> type;
  /// The configuration and content that was released.
  final pulumi.Input<VersionResponse> version;

  /// Creates a new [ReleaseResponse].
  /// [message] The deploy description when the release was created. The value can be up to 512 characters.
  /// [name] The unique identifier for the release, in either of the following formats: - sites/SITE_ID/releases/RELEASE_ID - sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID This name is provided in the response body when you call [`releases.create`](sites.releases/create) or [`channels.releases.create`](sites.channels.releases/create).
  /// [releaseTime] The time at which the version is set to be public.
  /// [releaseUser] Identifies the user who created the release.
  /// [type] Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
  /// [version] The configuration and content that was released.
  const ReleaseResponse({
    required this.message,
    required this.name,
    required this.releaseTime,
    required this.releaseUser,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'name': name,
      'releaseTime': releaseTime,
      'releaseUser': pulumi.Input.mapInputValue<ActingUserResponse, Map<String, dynamic>>(releaseUser, (value) => value.toMap()),
      'type': type,
      'version': pulumi.Input.mapInputValue<VersionResponse, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory ReleaseResponse.fromMap(Map<String, dynamic> map) {
    return ReleaseResponse(
      message: pulumi.Input.fromValue(map['message'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      releaseTime: pulumi.Input.fromValue(map['releaseTime'] as String),
      releaseUser: pulumi.Input.fromValue(ActingUserResponse.fromMap((map['releaseUser']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(VersionResponse.fromMap((map['version']! as Map).cast<String, dynamic>())),
    );
  }
}
