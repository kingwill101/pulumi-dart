// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHyperdriveConfigCaching {
  /// Set to true to disable caching of SQL responses. Default is false.
  final pulumi.Input<bool> disabled;
  /// Specify the maximum duration (in seconds) items should persist in the cache. Defaults to 60 seconds if not specified.
  final pulumi.Input<int> maxAge;
  /// Specify the number of seconds the cache may serve a stale response. Defaults to 15 seconds if not specified.
  final pulumi.Input<int> staleWhileRevalidate;

  /// Creates a new [GetHyperdriveConfigCaching].
  /// [disabled] Set to true to disable caching of SQL responses. Default is false.
  /// [maxAge] Specify the maximum duration (in seconds) items should persist in the cache. Defaults to 60 seconds if not specified.
  /// [staleWhileRevalidate] Specify the number of seconds the cache may serve a stale response. Defaults to 15 seconds if not specified.
  const GetHyperdriveConfigCaching({
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

  factory GetHyperdriveConfigCaching.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigCaching(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      maxAge: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxAge'])),
      staleWhileRevalidate: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['staleWhileRevalidate'])),
    );
  }
}
