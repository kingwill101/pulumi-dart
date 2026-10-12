// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplicationPublishedAppIds.
class GetApplicationPublishedAppIdsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A map of application names to application IDs.
  final Map<String, String>? result;

  /// Creates a new [GetApplicationPublishedAppIdsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [result] A map of application names to application IDs.
  const GetApplicationPublishedAppIdsResult({
    this.id,
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'result': ?result,
    };
  }

  factory GetApplicationPublishedAppIdsResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationPublishedAppIdsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
