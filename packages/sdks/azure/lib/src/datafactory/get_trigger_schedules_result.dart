// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTriggerSchedules.
class GetTriggerSchedulesResult {
  final String? dataFactoryId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of trigger schedule names available in this Azure Data Factory.
  final List<String>? items;

  /// Creates a new [GetTriggerSchedulesResult].
  /// [dataFactoryId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [items] A list of trigger schedule names available in this Azure Data Factory.
  const GetTriggerSchedulesResult({
    this.dataFactoryId,
    this.id,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': ?dataFactoryId,
      'id': ?id,
      'items': ?items,
    };
  }

  factory GetTriggerSchedulesResult.fromMap(Map<String, dynamic> map) {
    return GetTriggerSchedulesResult(
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
