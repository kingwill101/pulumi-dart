// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getView.
class GetViewResult {
  /// The time at which this view was created.
  final String? createTime;
  /// The human-readable display name of the view.
  final String? displayName;
  /// Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  final String? name;
  /// The most recent time at which the view was updated.
  final String? updateTime;
  /// String with specific view properties, must be non-empty.
  final String? value;

  /// Creates a new [GetViewResult].
  /// [createTime] The time at which this view was created.
  /// [displayName] The human-readable display name of the view.
  /// [name] Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  /// [updateTime] The most recent time at which the view was updated.
  /// [value] String with specific view properties, must be non-empty.
  const GetViewResult({
    this.createTime,
    this.displayName,
    this.name,
    this.updateTime,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'name': ?name,
      'updateTime': ?updateTime,
      'value': ?value,
    };
  }

  factory GetViewResult.fromMap(Map<String, dynamic> map) {
    return GetViewResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
