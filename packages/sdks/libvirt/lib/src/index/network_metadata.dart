// ignore_for_file: unused_element, unnecessary_cast


class NetworkMetadata {
  /// Configures XML-based metadata for the network.
  final String xml;

  /// Creates a new [NetworkMetadata].
  /// [xml] Configures XML-based metadata for the network.
  NetworkMetadata({
    required this.xml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xml': xml,
    };
  }

  factory NetworkMetadata.fromMap(Map<String, dynamic> map) {
    return NetworkMetadata(
      xml: map['xml'] as String,
    );
  }
}

