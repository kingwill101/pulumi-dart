// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHyperdriveConfigsResultCaching {
  /// Defines whether caching is disabled.
  final pulumi.Input<bool> disabled;
  /// Defines the maximum duration (in seconds) items persist in the cache.
  final pulumi.Input<int> maxAge;
  /// Defines the number of seconds the cache may serve a stale response.
  final pulumi.Input<int> staleWhileRevalidate;

  /// Creates a new [GetHyperdriveConfigsResultCaching].
  /// [disabled] Defines whether caching is disabled.
  /// [maxAge] Defines the maximum duration (in seconds) items persist in the cache.
  /// [staleWhileRevalidate] Defines the number of seconds the cache may serve a stale response.
  const GetHyperdriveConfigsResultCaching({
    required this.disabled,
    required this.maxAge,
    required this.staleWhileRevalidate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'maxAge': maxAge,
      'staleWhileRevalidate': staleWhileRevalidate,
    };
  }

  factory GetHyperdriveConfigsResultCaching.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigsResultCaching(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      maxAge: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxAge'])),
      staleWhileRevalidate: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['staleWhileRevalidate'])),
    );
  }
}
