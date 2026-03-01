// ignore_for_file: unused_element, unnecessary_cast


class AliasPathMetadataResponse {
  /// The attributes of the token that the alias path is referring to.
  final String attributes;
  /// The type of the token that the alias path is referring to.
  final String type;

  /// Creates a new [AliasPathMetadataResponse].
  /// [attributes] The attributes of the token that the alias path is referring to.
  /// [type] The type of the token that the alias path is referring to.
  AliasPathMetadataResponse({
    required this.attributes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'type': type,
    };
  }

  factory AliasPathMetadataResponse.fromMap(Map<String, dynamic> map) {
    return AliasPathMetadataResponse(
      attributes: map['attributes'] as String,
      type: map['type'] as String,
    );
  }
}

