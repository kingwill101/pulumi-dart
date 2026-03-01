// ignore_for_file: unused_element, unnecessary_cast


/// Describes how identity is verified
class Identity {
  /// The identity type
  final String? type;

  /// Creates a new [Identity].
  /// [type] The identity type
  Identity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

