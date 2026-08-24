// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneFilterAccount {
  /// Filter by an account ID.
  final pulumi.Input<String?>? id;
  /// An account Name. Optional filter operators can be provided to extend refine the search:
  /// * `equal` (default)
  /// * `notEqual`
  /// * `startsWith`
  /// * `endsWith`
  /// * `contains`
  /// * `startsWithCaseSensitive`
  /// * `endsWithCaseSensitive`
  /// * `containsCaseSensitive`
  final pulumi.Input<String?>? name;

  /// Creates a new [GetZoneFilterAccount].
  /// [id] Filter by an account ID.
  /// [name] An account Name. Optional filter operators can be provided to extend refine the search:
  const GetZoneFilterAccount({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetZoneFilterAccount.fromMap(Map<String, dynamic> map) {
    return GetZoneFilterAccount(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
