// ignore_for_file: unused_element, unnecessary_cast


/// Describes how input data is compressed
class Compression {
  /// Indicates the type of compression that the input uses. Required on PUT (CreateOrReplace) requests.
  final String type;

  /// Creates a new [Compression].
  /// [type] Indicates the type of compression that the input uses. Required on PUT (CreateOrReplace) requests.
  Compression({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory Compression.fromMap(Map<String, dynamic> map) {
    return Compression(
      type: map['type'] as String,
    );
  }
}

