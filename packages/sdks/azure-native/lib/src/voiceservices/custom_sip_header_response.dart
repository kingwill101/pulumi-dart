// ignore_for_file: unused_element, unnecessary_cast


/// Details of a Custom SIP Header.
class CustomSipHeaderResponse {
  /// The name of the Custom SIP Header
  final String? name;

  /// Creates a new [CustomSipHeaderResponse].
  /// [name] The name of the Custom SIP Header
  CustomSipHeaderResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CustomSipHeaderResponse.fromMap(Map<String, dynamic> map) {
    return CustomSipHeaderResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

