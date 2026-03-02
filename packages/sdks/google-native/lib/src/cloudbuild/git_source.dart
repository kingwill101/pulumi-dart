// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Location of the source in any accessible Git repository.
class GitSource {
  /// Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  final pulumi.Input<String>? dir;
  /// The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. Cloud Build uses `git fetch` to fetch the revision from the Git repository; therefore make sure that the string you provide for `revision` is parsable by the command. For information on string values accepted by `git fetch`, see https://git-scm.com/docs/gitrevisions#_specifying_revisions. For information on `git fetch`, see https://git-scm.com/docs/git-fetch.
  final pulumi.Input<String>? revision;
  /// Location of the Git repo to build. This will be used as a `git remote`, see https://git-scm.com/docs/git-remote.
  final pulumi.Input<String>? url;

  /// Creates a new [GitSource].
  /// [dir] Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  /// [revision] The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. Cloud Build uses `git fetch` to fetch the revision from the Git repository; therefore make sure that the string you provide for `revision` is parsable by the command. For information on string values accepted by `git fetch`, see https://git-scm.com/docs/gitrevisions#_specifying_revisions. For information on `git fetch`, see https://git-scm.com/docs/git-fetch.
  /// [url] Location of the Git repo to build. This will be used as a `git remote`, see https://git-scm.com/docs/git-remote.
  GitSource({
    this.dir,
    this.revision,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
      'revision': ?revision,
      'url': ?url,
    };
  }

  factory GitSource.fromMap(Map<String, dynamic> map) {
    return GitSource(
      dir: map['dir'] == null ? null : (map['dir'] as String).input(),
      revision: map['revision'] == null ? null : (map['revision'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

