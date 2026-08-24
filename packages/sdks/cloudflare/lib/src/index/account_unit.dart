// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountUnit {
  /// Tenant unit ID
  final pulumi.Input<String?>? id;

  /// Creates a new [AccountUnit].
  /// [id] Tenant unit ID
  const AccountUnit({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory AccountUnit.fromMap(Map<String, dynamic> map) {
    return AccountUnit(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
