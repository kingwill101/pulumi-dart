// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTriggerSchedules.
class GetTriggerSchedulesResult {
  final String dataFactoryId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of trigger schedule names available in this Azure Data Factory.
  final List<String> items;

  /// Creates a new [GetTriggerSchedulesResult].
  /// [dataFactoryId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [items] A list of trigger schedule names available in this Azure Data Factory.
  const GetTriggerSchedulesResult({
    required this.dataFactoryId,
    required this.id,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': dataFactoryId,
      'id': id,
      'items': items,
    };
  }

  factory GetTriggerSchedulesResult.fromMap(Map<String, dynamic> map) {
    return GetTriggerSchedulesResult(
      dataFactoryId: map['dataFactoryId'] as String,
      id: map['id'] as String,
      items: (map['items'] as List).cast<String>(),
    );
  }
}

