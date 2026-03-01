// ignore_for_file: unused_element, unnecessary_cast


/// Label object for CompositeTypes
class CompositeTypeLabelEntryResponse {
  /// Key of the label
  final String key;
  /// Value of the label
  final String value;

  /// Creates a new [CompositeTypeLabelEntryResponse].
  /// [key] Key of the label
  /// [value] Value of the label
  CompositeTypeLabelEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory CompositeTypeLabelEntryResponse.fromMap(Map<String, dynamic> map) {
    return CompositeTypeLabelEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

