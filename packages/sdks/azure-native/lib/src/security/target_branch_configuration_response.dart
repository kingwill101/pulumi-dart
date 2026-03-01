// ignore_for_file: unused_element, unnecessary_cast


/// Repository branch configuration for PR Annotations.
class TargetBranchConfigurationResponse {
  /// Configuration of PR Annotations on default branch.
  ///
  /// Enabled - PR Annotations are enabled on the resource's default branch.
  /// Disabled - PR Annotations are disabled on the resource's default branch.
  final String? annotateDefaultBranch;
  /// Gets or sets branches that should have annotations.
  final List<String>? branchNames;

  /// Creates a new [TargetBranchConfigurationResponse].
  /// [annotateDefaultBranch] Configuration of PR Annotations on default branch.
  /// [branchNames] Gets or sets branches that should have annotations.
  TargetBranchConfigurationResponse({
    this.annotateDefaultBranch,
    this.branchNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotateDefaultBranch': ?annotateDefaultBranch,
      'branchNames': ?branchNames,
    };
  }

  factory TargetBranchConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TargetBranchConfigurationResponse(
      annotateDefaultBranch: map['annotateDefaultBranch'] == null ? null : map['annotateDefaultBranch'] as String,
      branchNames: map['branchNames'] == null ? null : (map['branchNames'] as List).cast<String>(),
    );
  }
}

