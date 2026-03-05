// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRelease.
class GetReleaseResult {
  /// Time the release was created.
  final String createTime;

  /// Format: `projects/{project_id}/releases/{release_id}`
  final String name;

  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  final String rulesetName;

  /// Time the release was updated.
  final String updateTime;

  /// Creates a new [GetReleaseResult].
  /// [createTime] Time the release was created.
  /// [name] Format: `projects/{project_id}/releases/{release_id}`
  /// [rulesetName] Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  /// [updateTime] Time the release was updated.
  GetReleaseResult({
    required this.createTime,
    required this.name,
    required this.rulesetName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'name': name,
      'rulesetName': rulesetName,
      'updateTime': updateTime,
    };
  }

  factory GetReleaseResult.fromMap(Map<String, dynamic> map) {
    return GetReleaseResult(
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      rulesetName: map['rulesetName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
