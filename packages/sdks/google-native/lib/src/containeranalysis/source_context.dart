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
      cloudRepo: map['cloudRepo'] == null ? null : (CloudRepoSourceContext.fromMap((map['cloudRepo'] as Map).cast<String, dynamic>())).input(),
      gerrit: map['gerrit'] == null ? null : (GerritSourceContext.fromMap((map['gerrit'] as Map).cast<String, dynamic>())).input(),
      git: map['git'] == null ? null : (GitSourceContext.fromMap((map['git'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
    );
  }
}

