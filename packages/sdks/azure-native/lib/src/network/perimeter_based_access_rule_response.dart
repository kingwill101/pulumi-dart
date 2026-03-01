// ignore_for_file: unused_element, unnecessary_cast


class PerimeterBasedAccessRuleResponse {
  /// NSP id in the ARM id format.
  final String id;
  /// Location of the NSP supplied.
  final String location;
  /// Resource guid of the NSP supplied.
  final String perimeterGuid;

  /// Creates a new [PerimeterBasedAccessRuleResponse].
  /// [id] NSP id in the ARM id format.
  /// [location] Location of the NSP supplied.
  /// [perimeterGuid] Resource guid of the NSP supplied.
  PerimeterBasedAccessRuleResponse({
    required this.id,
    required this.location,
    required this.perimeterGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'perimeterGuid': perimeterGuid,
    };
  }

  factory PerimeterBasedAccessRuleResponse.fromMap(Map<String, dynamic> map) {
    return PerimeterBasedAccessRuleResponse(
      id: map['id'] as String,
      location: map['location'] as String,
      perimeterGuid: map['perimeterGuid'] as String,
    );
  }
}

