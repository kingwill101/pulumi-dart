// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerTriggerTemplate {
  /// Name of the branch to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// This field is a regular expression.
  final pulumi.Input<String>? branchName;
  /// Explicit commit SHA to build. Exactly one of a branch name, tag, or commit SHA must be provided.
  final pulumi.Input<String>? commitSha;
  /// Directory, relative to the source root, in which to run the build.
  /// This must be a relative path. If a step's dir is specified and
  /// is an absolute path, this value is ignored for that step's
  /// execution.
  final pulumi.Input<String>? dir;
  /// Only trigger a build if the revision regex does NOT match the revision regex.
  final pulumi.Input<bool>? invertRegex;
  /// ID of the project that owns the Cloud Source Repository. If
  /// omitted, the project ID requesting the build is assumed.
  final pulumi.Input<String>? projectId;
  /// Name of the Cloud Source Repository. If omitted, the name "default" is assumed.
  final pulumi.Input<String>? repoName;
  /// Name of the tag to build. Exactly one of a branch name, tag, or commit SHA must be provided.
  /// This field is a regular expression.
  final pulumi.Input<String>? tagName;

  /// Creates a new [TriggerTriggerTemplate].
  /// [branchName] Name of the branch to build. Exactly one a of branch name, tag, or commit SHA must be provided.
  /// [commitSha] Explicit commit SHA to build. Exactly one of a branch name, tag, or commit SHA must be provided.
  /// [dir] Directory, relative to the source root, in which to run the build.
  /// [invertRegex] Only trigger a build if the revision regex does NOT match the revision regex.
  /// [projectId] ID of the project that owns the Cloud Source Repository. If
  /// [repoName] Name of the Cloud Source Repository. If omitted, the name "default" is assumed.
  /// [tagName] Name of the tag to build. Exactly one of a branch name, tag, or commit SHA must be provided.
  const TriggerTriggerTemplate({
    this.branchName,
    this.commitSha,
    this.dir,
    this.invertRegex,
    this.projectId,
    this.repoName,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'commitSha': ?commitSha,
      'dir': ?dir,
      'invertRegex': ?invertRegex,
      'projectId': ?projectId,
      'repoName': ?repoName,
      'tagName': ?tagName,
    };
  }

  factory TriggerTriggerTemplate.fromMap(Map<String, dynamic> map) {
    return TriggerTriggerTemplate(
      branchName: (() { final guardedValue = map['branchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitSha: (() { final guardedValue = map['commitSha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dir: (() { final guardedValue = map['dir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invertRegex: (() { final guardedValue = map['invertRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoName: (() { final guardedValue = map['repoName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagName: (() { final guardedValue = map['tagName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

