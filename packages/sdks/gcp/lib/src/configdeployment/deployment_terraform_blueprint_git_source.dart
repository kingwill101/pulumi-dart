// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentTerraformBlueprintGitSource {
  /// Subdirectory within the repo.
  final pulumi.Input<String?>? directory;
  /// Git reference (branch or tag).
  final pulumi.Input<String?>? ref;
  /// Repository URL.
  final pulumi.Input<String> repo;

  /// Creates a new [DeploymentTerraformBlueprintGitSource].
  /// [directory] Subdirectory within the repo.
  /// [ref] Git reference (branch or tag).
  /// [repo] Repository URL.
  const DeploymentTerraformBlueprintGitSource({
    this.directory,
    this.ref,
    required this.repo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directory': ?directory,
      'ref': ?ref,
      'repo': repo,
    };
  }

  factory DeploymentTerraformBlueprintGitSource.fromMap(Map<String, dynamic> map) {
    return DeploymentTerraformBlueprintGitSource(
      directory: (() { final guardedValue = map['directory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repo: pulumi.Input.fromValue(map['repo'] as String),
    );
  }
}
