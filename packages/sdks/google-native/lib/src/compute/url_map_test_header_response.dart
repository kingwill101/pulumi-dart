// ignore_for_file: unused_element, unnecessary_cast


/// HTTP headers used in UrlMapTests.
class UrlMapTestHeaderResponse {
  /// Header name.
  final String name;
  /// Header value.
  final String value;

  /// Creates a new [UrlMapTestHeaderResponse].
  /// [name] Header name.
  /// [value] Header value.
  UrlMapTestHeaderResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory UrlMapTestHeaderResponse.fromMap(Map<String, dynamic> map) {
    return UrlMapTestHeaderResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

