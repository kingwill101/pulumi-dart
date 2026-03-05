// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceServiceReference {
  /// (Output)
  /// Output only. The underlying resource URI (For example, URI of Forwarding Rule, URL Map,
  /// and Backend Service).
  final pulumi.Input<String>? uri;

  /// Creates a new [ServiceServiceReference].
  /// [uri] (Output)
  ServiceServiceReference({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory ServiceServiceReference.fromMap(Map<String, dynamic> map) {
    return ServiceServiceReference(
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

