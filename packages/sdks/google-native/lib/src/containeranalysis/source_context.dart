// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_repo_source_context.dart';
import 'gerrit_source_context.dart';
import 'git_source_context.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class SourceContext {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final pulumi.Input<CloudRepoSourceContext>? cloudRepo;
  /// A SourceContext referring to a Gerrit project.
  final pulumi.Input<GerritSourceContext>? gerrit;
  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final pulumi.Input<GitSourceContext>? git;
  /// Labels with user defined metadata.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [SourceContext].
  /// [cloudRepo] A SourceContext referring to a revision in a Google Cloud Source Repo.
  /// [gerrit] A SourceContext referring to a Gerrit project.
  /// [git] A SourceContext referring to any third party Git repo (e.g., GitHub).
  /// [labels] Labels with user defined metadata.
  SourceContext({
    this.cloudRepo,
    this.gerrit,
    this.git,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRepo': ?pulumi.Input.mapOptionalInputValue<CloudRepoSourceContext, Map<String, dynamic>>(cloudRepo, (value) => value.toMap()),
      'gerrit': ?pulumi.Input.mapOptionalInputValue<GerritSourceContext, Map<String, dynamic>>(gerrit, (value) => value.toMap()),
      'git': ?pulumi.Input.mapOptionalInputValue<GitSourceContext, Map<String, dynamic>>(git, (value) => value.toMap()),
      'labels': ?labels,
    };
  }

  factory SourceContext.fromMap(Map<String, dynamic> map) {
    return SourceContext(
      cloudRepo: (() { final guardedValue = map['cloudRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudRepoSourceContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gerrit: (() { final guardedValue = map['gerrit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GerritSourceContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitSourceContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

