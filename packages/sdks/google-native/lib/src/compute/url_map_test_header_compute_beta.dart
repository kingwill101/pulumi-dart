// ignore_for_file: unused_element, unnecessary_cast


/// HTTP headers used in UrlMapTests.
class UrlMapTestHeaderComputeBeta {
  /// Header name.
  final String? name;
  /// Header value.
  final String? value;

  /// Creates a new [UrlMapTestHeaderComputeBeta].
  /// [name] Header name.
  /// [value] Header value.
  UrlMapTestHeaderComputeBeta({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory UrlMapTestHeaderComputeBeta.fromMap(Map<String, dynamic> map) {
    return UrlMapTestHeaderComputeBeta(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

