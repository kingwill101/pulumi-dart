// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpectrumProtocolsResult {
  /// The full name of the application protocol.
  final pulumi.Input<String> description;
  /// The short name of the application protocol.
  final pulumi.Input<String> name;
  /// The available listening ports for the given protocol.
  final pulumi.Input<List<int>> ports;
  /// The transport layer protocol used by the application protocol
  final pulumi.Input<String> transport;

  /// Creates a new [GetSpectrumProtocolsResult].
  /// [description] The full name of the application protocol.
  /// [name] The short name of the application protocol.
  /// [ports] The available listening ports for the given protocol.
  /// [transport] The transport layer protocol used by the application protocol
  const GetSpectrumProtocolsResult({
    required this.description,
    required this.name,
    required this.ports,
    required this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'ports': ports,
      'transport': transport,
    };
  }

  factory GetSpectrumProtocolsResult.fromMap(Map<String, dynamic> map) {
    return GetSpectrumProtocolsResult(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
      transport: pulumi.Input.fromValue(map['transport'] as String),
    );
  }
}
