// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateEndpoint {
  /// Specifies the id of private endpoint.
  final pulumi.Input<String?>? id;

  /// Creates a new [PrivateEndpoint].
  /// [id] Specifies the id of private endpoint.
  const PrivateEndpoint({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return PrivateEndpoint(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
