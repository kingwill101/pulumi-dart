// ignore_for_file: unused_element, unnecessary_cast


class DomainCreate {
  final bool? autodestroy;
  final bool? bypassCache;
  final bool? forceBoot;
  final bool? paused;
  final bool? resetNvram;
  final bool? validate;

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
      autodestroy: map['autodestroy'] == null ? null : map['autodestroy'] as bool,
      bypassCache: map['bypassCache'] == null ? null : map['bypassCache'] as bool,
      forceBoot: map['forceBoot'] == null ? null : map['forceBoot'] as bool,
      paused: map['paused'] == null ? null : map['paused'] as bool,
      resetNvram: map['resetNvram'] == null ? null : map['resetNvram'] as bool,
      validate: map['validate'] == null ? null : map['validate'] as bool,
    );
  }
}

