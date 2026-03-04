// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Repository branch configuration for PR Annotations.
class TargetBranchConfigurationResponse {
  /// Configuration of PR Annotations on default branch.
  ///
  /// Enabled - PR Annotations are enabled on the resource's default branch.
  /// Disabled - PR Annotations are disabled on the resource's default branch.
  final pulumi.Input<String>? annotateDefaultBranch;

  /// Gets or sets branches that should have annotations.
  final pulumi.Input<List<String>>? branchNames;

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
      annotateDefaultBranch: (() {
        final guardedValue = map['annotateDefaultBranch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      branchNames: (() {
        final guardedValue = map['branchNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
