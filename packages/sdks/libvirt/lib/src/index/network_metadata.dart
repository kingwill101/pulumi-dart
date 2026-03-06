// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkMetadata {
  /// Configures XML-based metadata for the network.
  final pulumi.Input<String> xml;

  /// Creates a new [NetworkMetadata].
  /// [xml] Configures XML-based metadata for the network.
  const NetworkMetadata({
    required this.xml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xml': xml,
    };
  }

  factory NetworkMetadata.fromMap(Map<String, dynamic> map) {
    return NetworkMetadata(
      xml: pulumi.Input.fromValue(map['xml'] as String),
    );
  }
}

