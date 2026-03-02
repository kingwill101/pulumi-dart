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
      autodestroy: map['autodestroy'] == null ? null : (map['autodestroy']! as bool).input(),
      bypassCache: map['bypassCache'] == null ? null : (map['bypassCache']! as bool).input(),
      forceBoot: map['forceBoot'] == null ? null : (map['forceBoot']! as bool).input(),
      paused: map['paused'] == null ? null : (map['paused']! as bool).input(),
      resetNvram: map['resetNvram'] == null ? null : (map['resetNvram']! as bool).input(),
      validate: map['validate'] == null ? null : (map['validate']! as bool).input(),
    );
  }
}

