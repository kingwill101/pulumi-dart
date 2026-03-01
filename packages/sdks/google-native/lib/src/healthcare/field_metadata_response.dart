// ignore_for_file: unused_element, unnecessary_cast


/// Specifies FHIR paths to match, and how to handle de-identification of matching fields.
class FieldMetadataResponse {
  /// Deidentify action for one field.
  final String action;
  /// List of paths to FHIR fields to be redacted. Each path is a period-separated list where each component is either a field name or FHIR type name, for example: Patient, HumanName. For "choice" types (those defined in the FHIR spec with the form: field[x]) we use two separate components. For example, "deceasedAge.unit" is matched by "Deceased.Age.unit". Supported types are: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml.
  final List<String> paths;

  /// Creates a new [FieldMetadataResponse].
  /// [action] Deidentify action for one field.
  /// [paths] List of paths to FHIR fields to be redacted. Each path is a period-separated list where each component is either a field name or FHIR type name, for example: Patient, HumanName. For "choice" types (those defined in the FHIR spec with the form: field[x]) we use two separate components. For example, "deceasedAge.unit" is matched by "Deceased.Age.unit". Supported types are: AdministrativeGenderCode, Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id, Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String, UnsignedInt, Uri, Uuid, Xhtml.
  FieldMetadataResponse({
    required this.action,
    required this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'paths': paths,
    };
  }

  factory FieldMetadataResponse.fromMap(Map<String, dynamic> map) {
    return FieldMetadataResponse(
      action: map['action'] as String,
      paths: (map['paths'] as List).cast<String>(),
    );
  }
}

