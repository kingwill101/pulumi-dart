import 'package:pulumi/pulumi.dart' as pulumi;
import 'acting_user_response.dart';
import 'release_args.dart';
import 'version_response.dart';

/// Creates a new release, which makes the content of the specified version actively display on the appropriate URL(s).
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Release extends pulumi.CustomResource {
  late final pulumi.Output<String> channelId;
  /// The deploy description when the release was created. The value can be up to 512 characters.
  late final pulumi.Output<String> message;
  /// The unique identifier for the release, in either of the following formats: - sites/SITE_ID/releases/RELEASE_ID - sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID This name is provided in the response body when you call [`releases.create`](sites.releases/create) or [`channels.releases.create`](sites.channels.releases/create).
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The time at which the version is set to be public.
  late final pulumi.Output<String> releaseTime;
  /// Identifies the user who created the release.
  late final pulumi.Output<ActingUserResponse> releaseUser;
  late final pulumi.Output<String> siteId;
  /// Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
  late final pulumi.Output<String> type;
  /// The configuration and content that was released.
  late final pulumi.Output<VersionResponse> version;
  /// The unique identifier for a version, in the format: sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in the `parent` parameter. This query parameter must be empty if the `type` field in the request body is `SITE_DISABLE`.
  late final pulumi.Output<String?> versionName;

  /// Creates a new [Release].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Release]. {@macro pulumi_firebasehosting_v1beta1_release_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Release(
    String name, {
    ReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firebasehosting/v1beta1:Release',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    channelId = registerOutput<String>('channelId');
    message = registerOutput<String>('message');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    releaseTime = registerOutput<String>('releaseTime');
    releaseUser = registerOutput<ActingUserResponse>('releaseUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActingUserResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteId = registerOutput<String>('siteId');
    type = registerOutput<String>('type');
    version = registerOutput<VersionResponse>('version', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    versionName = registerOutput<String?>('versionName');
  }
}
