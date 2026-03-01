// ignore_for_file: unused_element, unnecessary_cast


class ExtendedLocationOptionsResponse {
  final String? supportedPolicy;
  /// The type.
  final String? type;

  /// Creates a new [ExtendedLocationOptionsResponse].
  /// [supportedPolicy] Optional.
  /// [type] The type.
  ExtendedLocationOptionsResponse({
    this.supportedPolicy,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedPolicy': ?supportedPolicy,
      'type': ?type,
    };
  }

  factory ExtendedLocationOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationOptionsResponse(
      supportedPolicy: map['supportedPolicy'] == null ? null : map['supportedPolicy'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

