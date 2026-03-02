// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit {
  /// Relative path from the repository root to the Skaffold file.
  final pulumi.Input<String>? path;
  /// Git ref the package should be cloned from.
  final pulumi.Input<String>? ref;
  /// Git repository the package should be cloned from.
  final pulumi.Input<String> repo;

  /// Creates a new [CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit].
  /// [path] Relative path from the repository root to the Skaffold file.
  /// [ref] Git ref the package should be cloned from.
  /// [repo] Git repository the package should be cloned from.
  CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit({
    this.path,
    this.ref,
    required this.repo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'ref': ?ref,
      'repo': repo,
    };
  }

  factory CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit(
      path: map['path'] == null ? null : (map['path'] as String).input(),
      ref: map['ref'] == null ? null : (map['ref'] as String).input(),
      repo: (map['repo'] as String).input(),
    );
  }
}

