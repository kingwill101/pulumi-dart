// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointNetworkInterface {
  /// The ID of the Private DNS Zone Config.
  final pulumi.Input<String>? id;
  /// Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [EndpointNetworkInterface].
  /// [id] The ID of the Private DNS Zone Config.
  /// [name] Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  const EndpointNetworkInterface({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory EndpointNetworkInterface.fromMap(Map<String, dynamic> map) {
    return EndpointNetworkInterface(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
