// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountFilter {
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Name of the account.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetAccountFilter].
  /// [direction] Direction to order results.
  /// [name] Name of the account.
  const GetAccountFilter({
    this.direction,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'name': ?name,
    };
  }

  factory GetAccountFilter.fromMap(Map<String, dynamic> map) {
    return GetAccountFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
