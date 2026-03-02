// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_cloud_repo_source_context.dart';
import 'google_devtools_containeranalysis_v1alpha1_gerrit_source_context.dart';
import 'google_devtools_containeranalysis_v1alpha1_git_source_context.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class GoogleDevtoolsContaineranalysisV1alpha1SourceContext {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext>? cloudRepo;
  /// A SourceContext referring to a Gerrit project.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext>? gerrit;
  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext>? git;
  /// Labels with user defined metadata.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SourceContext].
  /// [cloudRepo] A SourceContext referring to a revision in a Google Cloud Source Repo.
  /// [gerrit] A SourceContext referring to a Gerrit project.
  /// [git] A SourceContext referring to any third party Git repo (e.g., GitHub).
  /// [labels] Labels with user defined metadata.
  GoogleDevtoolsContaineranalysisV1alpha1SourceContext({
    this.cloudRepo,
    this.gerrit,
    this.git,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRepo': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext, Map<String, dynamic>>(cloudRepo, (value) => value.toMap()),
      'gerrit': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext, Map<String, dynamic>>(gerrit, (value) => value.toMap()),
      'git': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext, Map<String, dynamic>>(git, (value) => value.toMap()),
      'labels': ?labels,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SourceContext(
      cloudRepo: map['cloudRepo'] == null ? null : (GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext.fromMap((map['cloudRepo'] as Map).cast<String, dynamic>())).input(),
      gerrit: map['gerrit'] == null ? null : (GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext.fromMap((map['gerrit'] as Map).cast<String, dynamic>())).input(),
      git: map['git'] == null ? null : (GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext.fromMap((map['git'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
    );
  }
}

