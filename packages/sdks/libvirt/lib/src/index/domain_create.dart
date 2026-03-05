// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCreate {
  final pulumi.Input<bool>? autodestroy;
  final pulumi.Input<bool>? bypassCache;
  final pulumi.Input<bool>? forceBoot;
  final pulumi.Input<bool>? paused;
  final pulumi.Input<bool>? resetNvram;
  final pulumi.Input<bool>? validate;

  /// Creates a new [DomainCreate].
  /// [autodestroy] Optional.
  /// [bypassCache] Optional.
  /// [forceBoot] Optional.
  /// [paused] Optional.
  /// [resetNvram] Optional.
  /// [validate] Optional.
  DomainCreate({
    this.autodestroy,
    this.bypassCache,
    this.forceBoot,
    this.paused,
    this.resetNvram,
    this.validate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autodestroy': ?autodestroy,
      'bypassCache': ?bypassCache,
      'forceBoot': ?forceBoot,
      'paused': ?paused,
      'resetNvram': ?resetNvram,
      'validate': ?validate,
    };
  }

  factory DomainCreate.fromMap(Map<String, dynamic> map) {
    return DomainCreate(
      autodestroy: (() { final guardedValue = map['autodestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bypassCache: (() { final guardedValue = map['bypassCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceBoot: (() { final guardedValue = map['forceBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resetNvram: (() { final guardedValue = map['resetNvram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validate: (() { final guardedValue = map['validate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

