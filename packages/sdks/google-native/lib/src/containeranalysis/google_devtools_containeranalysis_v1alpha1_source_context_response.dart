// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_cloud_repo_source_context_response.dart';
import 'google_devtools_containeranalysis_v1alpha1_gerrit_source_context_response.dart';
import 'google_devtools_containeranalysis_v1alpha1_git_source_context_response.dart';

/// A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.
class GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse> cloudRepo;
  /// A SourceContext referring to a Gerrit project.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContextResponse> gerrit;
  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse> git;
  /// Labels with user defined metadata.
  final pulumi.Input<Map<String, String>> labels;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse].
  /// [cloudRepo] A SourceContext referring to a revision in a Google Cloud Source Repo.
  /// [gerrit] A SourceContext referring to a Gerrit project.
  /// [git] A SourceContext referring to any third party Git repo (e.g., GitHub).
  /// [labels] Labels with user defined metadata.
  GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse({
    required this.cloudRepo,
    required this.gerrit,
    required this.git,
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRepo': pulumi.Input.mapInputValue<GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse, Map<String, dynamic>>(cloudRepo, (value) => value.toMap()),
      'gerrit': pulumi.Input.mapInputValue<GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContextResponse, Map<String, dynamic>>(gerrit, (value) => value.toMap()),
      'git': pulumi.Input.mapInputValue<GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse, Map<String, dynamic>>(git, (value) => value.toMap()),
      'labels': labels,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse(
      cloudRepo: pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContextResponse.fromMap((map['cloudRepo']! as Map).cast<String, dynamic>())),
      gerrit: pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContextResponse.fromMap((map['gerrit']! as Map).cast<String, dynamic>())),
      git: pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1GitSourceContextResponse.fromMap((map['git']! as Map).cast<String, dynamic>())),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
    );
  }
}

