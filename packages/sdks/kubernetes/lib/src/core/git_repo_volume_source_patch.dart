// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.
///
/// DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
class GitRepoVolumeSourcePatch {
  /// directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  final pulumi.Input<String>? directory;
  /// repository is the URL
  final pulumi.Input<String>? repository;
  /// revision is the commit hash for the specified revision.
  final pulumi.Input<String>? revision;

  /// Creates a new [GitRepoVolumeSourcePatch].
  /// [directory] directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  /// [repository] repository is the URL
  /// [revision] revision is the commit hash for the specified revision.
  GitRepoVolumeSourcePatch({
    this.directory,
    this.repository,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directory': ?directory,
      'repository': ?repository,
      'revision': ?revision,
    };
  }

  factory GitRepoVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return GitRepoVolumeSourcePatch(
      directory: map['directory'] == null ? null : (map['directory'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
      revision: map['revision'] == null ? null : (map['revision'] as String).input(),
    );
  }
}

