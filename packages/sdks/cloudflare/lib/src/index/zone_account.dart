// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneAccount {
  /// Identifier
  final pulumi.Input<String?>? id;

  /// Creates a new [ZoneAccount].
  /// [id] Identifier
  const ZoneAccount({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ZoneAccount.fromMap(Map<String, dynamic> map) {
    return ZoneAccount(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
