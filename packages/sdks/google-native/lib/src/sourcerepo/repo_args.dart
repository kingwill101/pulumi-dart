// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirror_config.dart';

/// {@template pulumi_sourcerepo_v1_repo_args_doc}
/// The set of arguments for Repo.
/// {@endtemplate}
/// {@macro pulumi_sourcerepo_v1_repo_args_doc}
class RepoArgs {
  /// How this repository mirrors a repository managed by another service. Read-only field.
  final pulumi.Input<MirrorConfig>? mirrorConfig;
  /// Resource name of the repository, of the form `projects//repos/`. The repo name may contain slashes. eg, `projects/myproject/repos/name/with/slash`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// How this repository publishes a change in the repository through Cloud Pub/Sub. Keyed by the topic names.
  final pulumi.Input<Map<String, String>>? pubsubConfigs;
  /// The disk usage of the repo, in bytes. Read-only field. Size is only returned by GetRepo.
  final pulumi.Input<String>? size;
  /// URL to clone the repository from Google Cloud Source Repositories. Read-only field.
  final pulumi.Input<String>? url;

  /// Creates a new [RepoArgs].
  /// [mirrorConfig] How this repository mirrors a repository managed by another service. Read-only field.
  /// [name] Resource name of the repository, of the form `projects//repos/`. The repo name may contain slashes. eg, `projects/myproject/repos/name/with/slash`
  /// [project] Optional.
  /// [pubsubConfigs] How this repository publishes a change in the repository through Cloud Pub/Sub. Keyed by the topic names.
  /// [size] The disk usage of the repo, in bytes. Read-only field. Size is only returned by GetRepo.
  /// [url] URL to clone the repository from Google Cloud Source Repositories. Read-only field.
  RepoArgs({
    this.mirrorConfig,
    this.name,
    this.project,
    this.pubsubConfigs,
    this.size,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mirrorConfig': ?pulumi.Input.mapOptionalInputValue<MirrorConfig, Map<String, dynamic>>(mirrorConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'pubsubConfigs': ?pubsubConfigs,
      'size': ?size,
      'url': ?url,
    };
  }

  factory RepoArgs.fromMap(Map<String, dynamic> map) {
    return RepoArgs(
      mirrorConfig: map['mirrorConfig'] == null ? null : (MirrorConfig.fromMap((map['mirrorConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pubsubConfigs: map['pubsubConfigs'] == null ? null : ((map['pubsubConfigs'] as Map).cast<String, String>()).input(),
      size: map['size'] == null ? null : (map['size'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

