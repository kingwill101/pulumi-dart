// ignore_for_file: unused_element, unnecessary_cast


class ExtendedLocationOptions {
  final String? supportedPolicy;
  /// The type.
  final String? type;

  /// Creates a new [ExtendedLocationOptions].
  /// [supportedPolicy] Optional.
  /// [type] The type.
  ExtendedLocationOptions({
    this.supportedPolicy,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedPolicy': ?supportedPolicy,
      'type': ?type,
    };
  }

  factory ExtendedLocationOptions.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationOptions(
      supportedPolicy: map['supportedPolicy'] == null ? null : map['supportedPolicy'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

