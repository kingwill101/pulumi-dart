// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSnippets.
class GetSnippetsResult {
  /// The timestamp of when the snippet was created.
  final String? createdOn;
  /// The timestamp of when the snippet was last modified.
  final String? modifiedOn;
  /// The identifying name of the snippet.
  final String? snippetName;
  /// The unique ID of the zone.
  final String? zoneId;

  /// Creates a new [GetSnippetsResult].
  /// [createdOn] The timestamp of when the snippet was created.
  /// [modifiedOn] The timestamp of when the snippet was last modified.
  /// [snippetName] The identifying name of the snippet.
  /// [zoneId] The unique ID of the zone.
  const GetSnippetsResult({
    this.createdOn,
    this.modifiedOn,
    this.snippetName,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'modifiedOn': ?modifiedOn,
      'snippetName': ?snippetName,
      'zoneId': ?zoneId,
    };
  }

  factory GetSnippetsResult.fromMap(Map<String, dynamic> map) {
    return GetSnippetsResult(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snippetName: (() { final guardedValue = map['snippetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
