// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo {
  /// Relative path from the repository root to the Skaffold file.
  final pulumi.Input<String>? path;
  /// Branch or tag to use when cloning the repository.
  final pulumi.Input<String>? ref;
  /// Cloud Build 2nd gen repository in the format of 'projects/<project>/locations/<location>/connections/<connection>/repositories/<repository>'.
  final pulumi.Input<String> repository;

  /// Creates a new [CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo].
  /// [path] Relative path from the repository root to the Skaffold file.
  /// [ref] Branch or tag to use when cloning the repository.
  /// [repository] Cloud Build 2nd gen repository in the format of 'projects/<project>/locations/<location>/connections/<connection>/repositories/<repository>'.
  CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo({
    this.path,
    this.ref,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'ref': ?ref,
      'repository': repository,
    };
  }

  factory CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo(
      path: map['path'] == null ? null : (map['path'] as String).input(),
      ref: map['ref'] == null ? null : (map['ref'] as String).input(),
      repository: (map['repository'] as String).input(),
    );
  }
}

