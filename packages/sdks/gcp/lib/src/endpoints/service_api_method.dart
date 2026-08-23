// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceApiMethod {
  /// The simple name of the endpoint as described in the config.
  final pulumi.Input<String>? name;
  /// The type URL for the request to this API.
  final pulumi.Input<String>? requestType;
  /// The type URL for the response from this API.
  final pulumi.Input<String>? responseType;
  /// `SYNTAX_PROTO2` or `SYNTAX_PROTO3`.
  final pulumi.Input<String>? syntax;

  /// Creates a new [ServiceApiMethod].
  /// [name] The simple name of the endpoint as described in the config.
  /// [requestType] The type URL for the request to this API.
  /// [responseType] The type URL for the response from this API.
  /// [syntax] `SYNTAX_PROTO2` or `SYNTAX_PROTO3`.
  const ServiceApiMethod({
    this.name,
    this.requestType,
    this.responseType,
    this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requestType': ?requestType,
      'responseType': ?responseType,
      'syntax': ?syntax,
    };
  }

  factory ServiceApiMethod.fromMap(Map<String, dynamic> map) {
    return ServiceApiMethod(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseType: (() { final guardedValue = map['responseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syntax: (() { final guardedValue = map['syntax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
