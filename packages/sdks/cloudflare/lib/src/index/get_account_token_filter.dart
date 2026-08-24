// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountTokenFilter {
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// When true, includes recently-expired tokens in the response.
  final pulumi.Input<bool> includeExpired;

  /// Creates a new [GetAccountTokenFilter].
  /// [direction] Direction to order results.
  /// [includeExpired] When true, includes recently-expired tokens in the response.
  const GetAccountTokenFilter({
    this.direction,
    required this.includeExpired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'includeExpired': includeExpired,
    };
  }

  factory GetAccountTokenFilter.fromMap(Map<String, dynamic> map) {
    return GetAccountTokenFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeExpired: pulumi.Input.fromValue(map['includeExpired'] as bool),
    );
  }
}
