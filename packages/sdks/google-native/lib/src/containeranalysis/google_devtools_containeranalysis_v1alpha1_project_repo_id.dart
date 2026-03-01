// ignore_for_file: unused_element, unnecessary_cast


/// Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.
class GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId {
  /// The ID of the project.
  final String? project;
  /// The name of the repo. Leave empty for the default repo.
  final String? repoName;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId].
  /// [project] The ID of the project.
  /// [repoName] The name of the repo. Leave empty for the default repo.
  GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId({
    this.project,
    this.repoName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'repoName': ?repoName,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId(
      project: map['project'] == null ? null : map['project'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
    );
  }
}

