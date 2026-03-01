// ignore_for_file: unused_element, unnecessary_cast


/// HTTPHeader describes a custom header to be used in HTTP probes
class HTTPHeaderPatch {
  /// The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header.
  final String? name;
  /// The header field value
  final String? value;

  /// Creates a new [HTTPHeaderPatch].
  /// [name] The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header.
  /// [value] The header field value
  HTTPHeaderPatch({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory HTTPHeaderPatch.fromMap(Map<String, dynamic> map) {
    return HTTPHeaderPatch(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

