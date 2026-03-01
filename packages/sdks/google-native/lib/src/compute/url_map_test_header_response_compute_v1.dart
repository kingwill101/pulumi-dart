// ignore_for_file: unused_element, unnecessary_cast


/// HTTP headers used in UrlMapTests.
class UrlMapTestHeaderResponseComputeV1 {
  /// Header name.
  final String name;
  /// Header value.
  final String value;

  /// Creates a new [UrlMapTestHeaderResponseComputeV1].
  /// [name] Header name.
  /// [value] Header value.
  UrlMapTestHeaderResponseComputeV1({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory UrlMapTestHeaderResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return UrlMapTestHeaderResponseComputeV1(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

