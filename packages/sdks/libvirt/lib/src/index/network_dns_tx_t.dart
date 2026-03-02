// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkDnsTxT {
  /// Specifies the name for the TXT record.
  final pulumi.Input<String> name;
  /// Sets the value associated with the TXT record.
  final pulumi.Input<String> value;

  /// Creates a new [NetworkDnsTxT].
  /// [name] Specifies the name for the TXT record.
  /// [value] Sets the value associated with the TXT record.
  NetworkDnsTxT({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory NetworkDnsTxT.fromMap(Map<String, dynamic> map) {
    return NetworkDnsTxT(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

