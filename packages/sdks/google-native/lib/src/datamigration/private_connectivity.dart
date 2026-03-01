// ignore_for_file: unused_element, unnecessary_cast


/// Private Connectivity.
class PrivateConnectivity {
  /// The resource name (URI) of the private connection.
  final String privateConnection;

  /// Creates a new [PrivateConnectivity].
  /// [privateConnection] The resource name (URI) of the private connection.
  PrivateConnectivity({
    required this.privateConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnection': privateConnection,
    };
  }

  factory PrivateConnectivity.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivity(
      privateConnection: map['privateConnection'] as String,
    );
  }
}

