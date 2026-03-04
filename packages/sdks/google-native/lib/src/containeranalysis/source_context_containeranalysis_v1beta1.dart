// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_repo_source_context_containeranalysis_v1beta1.dart';
import 'gerrit_source_context_containeranalysis_v1beta1.dart';
import 'git_source_context_containeranalysis_v1beta1.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class SourceContextContaineranalysisV1beta1 {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final pulumi.Input<CloudRepoSourceContextContaineranalysisV1beta1>? cloudRepo;

  /// A SourceContext referring to a Gerrit project.
  final pulumi.Input<GerritSourceContextContaineranalysisV1beta1>? gerrit;

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final pulumi.Input<GitSourceContextContaineranalysisV1beta1>? git;

  /// Labels with user defined metadata.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [SourceContextContaineranalysisV1beta1].
  /// [cloudRepo] A SourceContext referring to a revision in a Google Cloud Source Repo.
  /// [gerrit] A SourceContext referring to a Gerrit project.
  /// [git] A SourceContext referring to any third party Git repo (e.g., GitHub).
  /// [labels] Labels with user defined metadata.
  SourceContextContaineranalysisV1beta1({
    this.cloudRepo,
    this.gerrit,
    this.git,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRepo':
          ?pulumi.Input.mapOptionalInputValue<
            CloudRepoSourceContextContaineranalysisV1beta1,
            Map<String, dynamic>
          >(cloudRepo, (value) => value.toMap()),
      'gerrit':
          ?pulumi.Input.mapOptionalInputValue<
            GerritSourceContextContaineranalysisV1beta1,
            Map<String, dynamic>
          >(gerrit, (value) => value.toMap()),
      'git':
          ?pulumi.Input.mapOptionalInputValue<
            GitSourceContextContaineranalysisV1beta1,
            Map<String, dynamic>
          >(git, (value) => value.toMap()),
      'labels': ?labels,
    };
  }

  factory SourceContextContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SourceContextContaineranalysisV1beta1(
      cloudRepo: (() {
        final guardedValue = map['cloudRepo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudRepoSourceContextContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gerrit: (() {
        final guardedValue = map['gerrit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GerritSourceContextContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      git: (() {
        final guardedValue = map['git'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GitSourceContextContaineranalysisV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
