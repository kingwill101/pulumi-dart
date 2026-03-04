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
      endpointName: (() {
        final guardedValue = map['endpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privatePort: (() {
        final guardedValue = map['privatePort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicPort: (() {
        final guardedValue = map['publicPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
