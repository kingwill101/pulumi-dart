// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomSslFilter {
  /// Whether to match all search requirements or at least one (any).
  /// Available values: "any", "all".
  final pulumi.Input<String> match;
  /// Status of the zone's custom SSL.
  /// Available values: "active", "expired", "deleted", "pending", "initializing".
  final pulumi.Input<String?>? status;

  /// Creates a new [GetCustomSslFilter].
  /// [match] Whether to match all search requirements or at least one (any).
  /// [status] Status of the zone's custom SSL.
  const GetCustomSslFilter({
    required this.match,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': match,
      'status': ?status,
    };
  }

  factory GetCustomSslFilter.fromMap(Map<String, dynamic> map) {
    return GetCustomSslFilter(
      match: pulumi.Input.fromValue(map['match'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
