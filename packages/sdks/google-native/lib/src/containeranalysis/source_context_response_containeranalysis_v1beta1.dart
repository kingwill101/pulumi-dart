// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_repo_source_context_response_containeranalysis_v1beta1.dart';
import 'gerrit_source_context_response_containeranalysis_v1beta1.dart';
import 'git_source_context_response_containeranalysis_v1beta1.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class SourceContextResponseContaineranalysisV1beta1 {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final pulumi.Input<CloudRepoSourceContextResponseContaineranalysisV1beta1> cloudRepo;
  /// A SourceContext referring to a Gerrit project.
  final pulumi.Input<GerritSourceContextResponseContaineranalysisV1beta1> gerrit;
  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final pulumi.Input<GitSourceContextResponseContaineranalysisV1beta1> git;
  /// Labels with user defined metadata.
  final pulumi.Input<Map<String, String>> labels;

  /// Creates a new [SourceContextResponseContaineranalysisV1beta1].
  /// [cloudRepo] A SourceContext referring to a revision in a Google Cloud Source Repo.
  /// [gerrit] A SourceContext referring to a Gerrit project.
  /// [git] A SourceContext referring to any third party Git repo (e.g., GitHub).
  /// [labels] Labels with user defined metadata.
  const SourceContextResponseContaineranalysisV1beta1({
    required this.cloudRepo,
    required this.gerrit,
    required this.git,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRepo': pulumi.Input.mapInputValue<CloudRepoSourceContextResponseContaineranalysisV1beta1, Map<String, dynamic>>(cloudRepo, (value) => value.toMap()),
      'gerrit': pulumi.Input.mapInputValue<GerritSourceContextResponseContaineranalysisV1beta1, Map<String, dynamic>>(gerrit, (value) => value.toMap()),
      'git': pulumi.Input.mapInputValue<GitSourceContextResponseContaineranalysisV1beta1, Map<String, dynamic>>(git, (value) => value.toMap()),
      'labels': labels,
    };
  }

  factory SourceContextResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SourceContextResponseContaineranalysisV1beta1(
      cloudRepo: pulumi.Input.fromValue(CloudRepoSourceContextResponseContaineranalysisV1beta1.fromMap((map['cloudRepo']! as Map).cast<String, dynamic>())),
      gerrit: pulumi.Input.fromValue(GerritSourceContextResponseContaineranalysisV1beta1.fromMap((map['gerrit']! as Map).cast<String, dynamic>())),
      git: pulumi.Input.fromValue(GitSourceContextResponseContaineranalysisV1beta1.fromMap((map['git']! as Map).cast<String, dynamic>())),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
    );
  }
}
