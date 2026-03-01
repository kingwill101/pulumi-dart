import 'package:pulumi/pulumi.dart' as pulumi;
import 'acting_user_response.dart';
import 'serving_config_response.dart';
import 'version_args.dart';

/// Creates a new version for the specified site.
class Version extends pulumi.CustomResource {
  /// The configuration for the behavior of the site. This configuration exists in the [`firebase.json`](https://firebase.google.com/docs/cli/#the_firebasejson_file) file.
  late final pulumi.Output<ServingConfigResponse> config;
  /// The time at which the version was created.
  late final pulumi.Output<String> createTime;
  /// Identifies the user who created the version.
  late final pulumi.Output<ActingUserResponse> createUser;
  /// The time at which the version was `DELETED`.
  late final pulumi.Output<String> deleteTime;
  /// Identifies the user who `DELETED` the version.
  late final pulumi.Output<ActingUserResponse> deleteUser;
  /// The total number of files associated with the version. This value is calculated after a version is `FINALIZED`.
  late final pulumi.Output<String> fileCount;
  /// The time at which the version was `FINALIZED`.
  late final pulumi.Output<String> finalizeTime;
  /// Identifies the user who `FINALIZED` the version.
  late final pulumi.Output<ActingUserResponse> finalizeUser;
  /// The labels used for extra metadata and/or filtering.
  late final pulumi.Output<Map<String, String>> labels;
  /// The fully-qualified resource name for the version, in the format: sites/ SITE_ID/versions/VERSION_ID This name is provided in the response body when you call [`CreateVersion`](sites.versions/create).
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> siteId;
  /// The self-reported size of the version. This value is used for a pre-emptive quota check for legacy version uploads.
  late final pulumi.Output<String?> sizeBytes;
  /// The deploy status of the version. For a successful deploy, call [`CreateVersion`](sites.versions/create) to make a new version (`CREATED` status), [upload all desired files](sites.versions/populateFiles) to the version, then [update](sites.versions/patch) the version to the `FINALIZED` status. Note that if you leave the version in the `CREATED` state for more than 12 hours, the system will automatically mark the version as `ABANDONED`. You can also change the status of a version to `DELETED` by calling [`DeleteVersion`](sites.versions/delete).
  late final pulumi.Output<String> status;
  /// The total stored bytesize of the version. This value is calculated after a version is `FINALIZED`.
  late final pulumi.Output<String> versionBytes;
  /// A unique id for the new version. This is was only specified for legacy version creations, and should be blank.
  late final pulumi.Output<String?> versionId;

  /// Creates a new [Version].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Version]. {@macro pulumi_firebasehosting_v1beta1_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Version(
    String name, {
    VersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firebasehosting/v1beta1:Version',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<ServingConfigResponse>('config');
    this.createTime = registerOutput<String>('createTime');
    this.createUser = registerOutput<ActingUserResponse>('createUser');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.deleteUser = registerOutput<ActingUserResponse>('deleteUser');
    this.fileCount = registerOutput<String>('fileCount');
    this.finalizeTime = registerOutput<String>('finalizeTime');
    this.finalizeUser = registerOutput<ActingUserResponse>('finalizeUser');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.siteId = registerOutput<String>('siteId');
    this.sizeBytes = registerOutput<String?>('sizeBytes');
    this.status = registerOutput<String>('status');
    this.versionBytes = registerOutput<String>('versionBytes');
    this.versionId = registerOutput<String?>('versionId');
  }
}
