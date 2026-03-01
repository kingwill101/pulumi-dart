// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_repo_source_context_response_containeranalysis_v1beta1.dart';
import 'gerrit_source_context_response_containeranalysis_v1beta1.dart';
import 'git_source_context_response_containeranalysis_v1beta1.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class SourceContextResponseContaineranalysisV1beta1 {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final CloudRepoSourceContextResponseContaineranalysisV1beta1 cloudRepo;
  /// A SourceContext referring to a Gerrit project.
  final GerritSourceContextResponseContaineranalysisV1beta1 gerrit;
  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final GitSourceContextResponseContaineranalysisV1beta1 git;
  /// Labels with user defined metadata.
  final Map<String, String> labels;

  /// Creates a new [SourceContextResponseContaineranalysisV1beta1].
  /// [cloudRepo] A SourceContext referring to a revision in a Google Cloud Source Repo.
  /// [gerrit] A SourceContext referring to a Gerrit project.
  /// [git] A SourceContext referring to any third party Git repo (e.g., GitHub).
  /// [labels] Labels with user defined metadata.
  SourceContextResponseContaineranalysisV1beta1({
    required this.cloudRepo,
    required this.gerrit,
    required this.git,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRepo': cloudRepo.toMap(),
      'gerrit': gerrit.toMap(),
      'git': git.toMap(),
      'labels': labels,
    };
  }

  factory SourceContextResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SourceContextResponseContaineranalysisV1beta1(
      cloudRepo: CloudRepoSourceContextResponseContaineranalysisV1beta1.fromMap((map['cloudRepo'] as Map).cast<String, dynamic>()),
      gerrit: GerritSourceContextResponseContaineranalysisV1beta1.fromMap((map['gerrit'] as Map).cast<String, dynamic>()),
      git: GitSourceContextResponseContaineranalysisV1beta1.fromMap((map['git'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}

