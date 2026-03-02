// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_build_source_codebase_author.dart';

class AppHostingBuildSourceCodebase {
  /// (Output)
  /// Version control metadata for a user associated with a resolved codebase.
  /// Currently assumes a Git user.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingBuildSourceCodebaseAuthor>>? authors;
  /// The branch in the codebase to build from, using the latest commit.
  final pulumi.Input<String>? branch;
  /// The commit in the codebase to build from.
  ///
  ///
  /// <a name="nested_source_codebase_author"></a>The `author` block contains:
  final pulumi.Input<String>? commit;
  /// (Output)
  /// The message of a codebase change.
  final pulumi.Input<String>? commitMessage;
  /// (Output)
  /// The time the change was made.
  final pulumi.Input<String>? commitTime;
  /// (Output)
  /// The 'name' field in a Git user's git.config. Required by Git.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// The full SHA-1 hash of a Git commit, if available.
  final pulumi.Input<String>? hash;
  /// (Output)
  /// A URI linking to the codebase on an hosting provider's website. May
  /// not be valid if the commit has been rebased or force-pushed out of
  /// existence in the linked repository.
  final pulumi.Input<String>? uri;

  /// Creates a new [AppHostingBuildSourceCodebase].
  /// [authors] (Output)
  /// [branch] The branch in the codebase to build from, using the latest commit.
  /// [commit] The commit in the codebase to build from.
  /// [commitMessage] (Output)
  /// [commitTime] (Output)
  /// [displayName] (Output)
  /// [hash] (Output)
  /// [uri] (Output)
  AppHostingBuildSourceCodebase({
    this.authors,
    this.branch,
    this.commit,
    this.commitMessage,
    this.commitTime,
    this.displayName,
    this.hash,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authors': ?pulumi.Input.mapOptionalInputValue<List<AppHostingBuildSourceCodebaseAuthor>, List<Map<String, dynamic>>>(authors, (value) => pulumi.Input.encodeList<AppHostingBuildSourceCodebaseAuthor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'branch': ?branch,
      'commit': ?commit,
      'commitMessage': ?commitMessage,
      'commitTime': ?commitTime,
      'displayName': ?displayName,
      'hash': ?hash,
      'uri': ?uri,
    };
  }

  factory AppHostingBuildSourceCodebase.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildSourceCodebase(
      authors: map['authors'] == null ? null : (pulumi.Input.decodeList<AppHostingBuildSourceCodebaseAuthor>(map['authors']!, (value) => AppHostingBuildSourceCodebaseAuthor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      branch: map['branch'] == null ? null : (map['branch']! as String).input(),
      commit: map['commit'] == null ? null : (map['commit']! as String).input(),
      commitMessage: map['commitMessage'] == null ? null : (map['commitMessage']! as String).input(),
      commitTime: map['commitTime'] == null ? null : (map['commitTime']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      hash: map['hash'] == null ? null : (map['hash']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

