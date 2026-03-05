import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirror_config_response.dart';
import 'repo_args.dart';

/// Creates a repo in the given project with the given name. If the named repository already exists, `CreateRepo` returns `ALREADY_EXISTS`.
class Repo extends pulumi.CustomResource {
  /// How this repository mirrors a repository managed by another service. Read-only field.
  late final pulumi.Output<MirrorConfigResponse> mirrorConfig;
  /// Resource name of the repository, of the form `projects//repos/`. The repo name may contain slashes. eg, `projects/myproject/repos/name/with/slash`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// How this repository publishes a change in the repository through Cloud Pub/Sub. Keyed by the topic names.
  late final pulumi.Output<Map<String, String>> pubsubConfigs;
  /// The disk usage of the repo, in bytes. Read-only field. Size is only returned by GetRepo.
  late final pulumi.Output<String> size;
  /// URL to clone the repository from Google Cloud Source Repositories. Read-only field.
  late final pulumi.Output<String> url;

  /// Creates a new [Repo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repo]. {@macro pulumi_sourcerepo_v1_repo_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repo(
    String name, {
    RepoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:sourcerepo/v1:Repo',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    mirrorConfig = registerOutput<MirrorConfigResponse>('mirrorConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MirrorConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pubsubConfigs = registerOutput<Map<String, String>>('pubsubConfigs');
    size = registerOutput<String>('size');
    url = registerOutput<String>('url');
  }
}
