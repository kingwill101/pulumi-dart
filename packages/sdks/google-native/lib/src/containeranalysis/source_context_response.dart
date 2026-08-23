// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_repo_source_context_response.dart';
import 'gerrit_source_context_response.dart';
import 'git_source_context_response.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class SourceContextResponse {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final pulumi.Input<CloudRepoSourceContextResponse> cloudRepo;
  /// A SourceContext referring to a Gerrit project.
  final pulumi.Input<GerritSourceContextResponse> gerrit;
  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final pulumi.Input<GitSourceContextResponse> git;
  /// Labels with user defined metadata.
  final pulumi.Input<Map<String, String>> labels;

  /// Creates a new [SourceContextResponse].
  /// [cloudRepo] A SourceContext referring to a revision in a Google Cloud Source Repo.
  /// [gerrit] A SourceContext referring to a Gerrit project.
  /// [git] A SourceContext referring to any third party Git repo (e.g., GitHub).
  /// [labels] Labels with user defined metadata.
  const SourceContextResponse({
    required this.cloudRepo,
    required this.gerrit,
    required this.git,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRepo': pulumi.Input.mapInputValue<CloudRepoSourceContextResponse, Map<String, dynamic>>(cloudRepo, (value) => value.toMap()),
      'gerrit': pulumi.Input.mapInputValue<GerritSourceContextResponse, Map<String, dynamic>>(gerrit, (value) => value.toMap()),
      'git': pulumi.Input.mapInputValue<GitSourceContextResponse, Map<String, dynamic>>(git, (value) => value.toMap()),
      'labels': labels,
    };
  }

  factory SourceContextResponse.fromMap(Map<String, dynamic> map) {
    return SourceContextResponse(
      cloudRepo: pulumi.Input.fromValue(CloudRepoSourceContextResponse.fromMap((map['cloudRepo']! as Map).cast<String, dynamic>())),
      gerrit: pulumi.Input.fromValue(GerritSourceContextResponse.fromMap((map['gerrit']! as Map).cast<String, dynamic>())),
      git: pulumi.Input.fromValue(GitSourceContextResponse.fromMap((map['git']! as Map).cast<String, dynamic>())),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
    );
  }
}
