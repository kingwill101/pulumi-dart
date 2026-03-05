// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getView.
class GetViewResult {
  /// The time at which this view was created.
  final String createTime;

  /// The human-readable display name of the view.
  final String displayName;

  /// Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  final String name;

  /// The most recent time at which the view was updated.
  final String updateTime;

  /// String with specific view properties, must be non-empty.
  final String value;

  /// Creates a new [GetViewResult].
  /// [createTime] The time at which this view was created.
  /// [displayName] The human-readable display name of the view.
  /// [name] Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  /// [updateTime] The most recent time at which the view was updated.
  /// [value] String with specific view properties, must be non-empty.
  GetViewResult({
    required this.createTime,
    required this.displayName,
    required this.name,
    required this.updateTime,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'name': name,
      'updateTime': updateTime,
      'value': value,
    };
  }

  factory GetViewResult.fromMap(Map<String, dynamic> map) {
    return GetViewResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      value: map['value'] as String,
    );
  }
}
