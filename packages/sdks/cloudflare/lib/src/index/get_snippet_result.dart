// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSnippet.
class GetSnippetResult {
  /// Indicates when the snippet was created.
  final String? createdOn;
  /// Identify the snippet.
  final String? id;
  /// Indicates when the snippet was last modified.
  final String? modifiedOn;
  /// Identify the snippet.
  final String? snippetName;
  /// Use this field to specify the unique ID of the zone.
  final String? zoneId;

  /// Creates a new [GetSnippetResult].
  /// [createdOn] Indicates when the snippet was created.
  /// [id] Identify the snippet.
  /// [modifiedOn] Indicates when the snippet was last modified.
  /// [snippetName] Identify the snippet.
  /// [zoneId] Use this field to specify the unique ID of the zone.
  const GetSnippetResult({
    this.createdOn,
    this.id,
    this.modifiedOn,
    this.snippetName,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'snippetName': ?snippetName,
      'zoneId': ?zoneId,
    };
  }

  factory GetSnippetResult.fromMap(Map<String, dynamic> map) {
    return GetSnippetResult(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snippetName: (() { final guardedValue = map['snippetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
