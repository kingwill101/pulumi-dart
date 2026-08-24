// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperdriveConfigCaching {
  /// Set to true to disable caching of SQL responses. Default is false.
  final pulumi.Input<bool?>? disabled;
  /// Specify the maximum duration (in seconds) items should persist in the cache. Defaults to 60 seconds if not specified.
  final pulumi.Input<int?>? maxAge;
  /// Specify the number of seconds the cache may serve a stale response. Defaults to 15 seconds if not specified.
  final pulumi.Input<int?>? staleWhileRevalidate;

  /// Creates a new [HyperdriveConfigCaching].
  /// [disabled] Set to true to disable caching of SQL responses. Default is false.
  /// [maxAge] Specify the maximum duration (in seconds) items should persist in the cache. Defaults to 60 seconds if not specified.
  /// [staleWhileRevalidate] Specify the number of seconds the cache may serve a stale response. Defaults to 15 seconds if not specified.
  const HyperdriveConfigCaching({
    this.disabled,
    this.maxAge,
    this.staleWhileRevalidate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'maxAge': ?maxAge,
      'staleWhileRevalidate': ?staleWhileRevalidate,
    };
  }

  factory HyperdriveConfigCaching.fromMap(Map<String, dynamic> map) {
    return HyperdriveConfigCaching(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      staleWhileRevalidate: (() { final guardedValue = map['staleWhileRevalidate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
