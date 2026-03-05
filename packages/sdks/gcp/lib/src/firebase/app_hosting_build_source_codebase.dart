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
  /// &lt;a name="nested_source_codebase_author"&gt;&lt;/a&gt;The `author` block contains:
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
      authors: (() { final guardedValue = map['authors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppHostingBuildSourceCodebaseAuthor>(guardedValue, (value) => AppHostingBuildSourceCodebaseAuthor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commit: (() { final guardedValue = map['commit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitMessage: (() { final guardedValue = map['commitMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitTime: (() { final guardedValue = map['commitTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hash: (() { final guardedValue = map['hash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

