// ignore_for_file: unused_element, unnecessary_cast


/// General identifier of a data field in a storage service.
class GooglePrivacyDlpV2FieldIdResponse {
  /// Name describing the field.
  final String name;

  /// Creates a new [GooglePrivacyDlpV2FieldIdResponse].
  /// [name] Name describing the field.
  GooglePrivacyDlpV2FieldIdResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GooglePrivacyDlpV2FieldIdResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2FieldIdResponse(
      name: map['name'] as String,
    );
  }
}

