// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the source in a 2nd-gen Google Cloud Build repository resource.
class ConnectedRepository {
  /// Directory, relative to the source root, in which to run the build.
  final pulumi.Input<String>? dir;
  /// Name of the Google Cloud Build repository, formatted as `projects/*/locations/*/connections/*/repositories/*`.
  final pulumi.Input<String> repository;
  /// The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
  final pulumi.Input<String>? revision;

  /// Creates a new [ConnectedRepository].
  /// [dir] Directory, relative to the source root, in which to run the build.
  /// [repository] Name of the Google Cloud Build repository, formatted as `projects/*/locations/*/connections/*/repositories/*`.
  /// [revision] The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
  ConnectedRepository({
    this.dir,
    required this.repository,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
      'repository': repository,
      'revision': ?revision,
    };
  }

  factory ConnectedRepository.fromMap(Map<String, dynamic> map) {
    return ConnectedRepository(
      dir: map['dir'] == null ? null : (map['dir'] as String).input(),
      repository: (map['repository'] as String).input(),
      revision: map['revision'] == null ? null : (map['revision'] as String).input(),
    );
  }
}

