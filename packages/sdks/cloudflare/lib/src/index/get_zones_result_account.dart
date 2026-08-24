// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesResultAccount {
  /// Identifier
  final pulumi.Input<String> id;
  /// The name of the account.
  final pulumi.Input<String> name;

  /// Creates a new [GetZonesResultAccount].
  /// [id] Identifier
  /// [name] The name of the account.
  const GetZonesResultAccount({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetZonesResultAccount.fromMap(Map<String, dynamic> map) {
    return GetZonesResultAccount(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
