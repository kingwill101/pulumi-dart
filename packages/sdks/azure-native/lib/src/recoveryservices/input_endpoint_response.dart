// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InputEndpointResponse {
  final pulumi.Input<String>? endpointName;
  final pulumi.Input<int>? privatePort;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<int>? publicPort;

  /// Creates a new [InputEndpointResponse].
  /// [endpointName] Optional.
  /// [privatePort] Optional.
  /// [protocol] Optional.
  /// [publicPort] Optional.
  InputEndpointResponse({
    this.endpointName,
    this.privatePort,
    this.protocol,
    this.publicPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'privatePort': ?privatePort,
      'protocol': ?protocol,
      'publicPort': ?publicPort,
    };
  }

  factory InputEndpointResponse.fromMap(Map<String, dynamic> map) {
    return InputEndpointResponse(
      endpointName: map['endpointName'] == null ? null : (map['endpointName']! as String).input(),
      privatePort: map['privatePort'] == null ? null : (map['privatePort']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      publicPort: map['publicPort'] == null ? null : (map['publicPort']! as int).input(),
    );
  }
}

