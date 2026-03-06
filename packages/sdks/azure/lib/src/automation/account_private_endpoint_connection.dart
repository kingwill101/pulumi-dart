// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountPrivateEndpointConnection {
  /// The ID of the Automation Account.
  final pulumi.Input<String>? id;
  /// Specifies the name of the Automation Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [AccountPrivateEndpointConnection].
  /// [id] The ID of the Automation Account.
  /// [name] Specifies the name of the Automation Account. Changing this forces a new resource to be created.
  const AccountPrivateEndpointConnection({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory AccountPrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return AccountPrivateEndpointConnection(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

