// ignore_for_file: unused_element, unnecessary_cast


/// Describes properties of an component as related to the standard
class StandardComponentPropertiesResponse {
  /// Component Key matching componentMetadata
  final String? key;

  /// Creates a new [StandardComponentPropertiesResponse].
  /// [key] Component Key matching componentMetadata
  StandardComponentPropertiesResponse({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory StandardComponentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StandardComponentPropertiesResponse(
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}

