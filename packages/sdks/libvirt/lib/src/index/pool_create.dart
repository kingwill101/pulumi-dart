// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolCreate {
  /// Experimental: whether to set pool autostart on the host. Defaults to true. Subject to change.
  final pulumi.Input<bool>? autostart;
  /// Experimental: whether to run StoragePoolBuild for this pool. If unset, provider default behavior applies. Subject to change.
  final pulumi.Input<bool>? build;
  /// Experimental: whether to start the pool after definition. Defaults to true. Subject to change.
  final pulumi.Input<bool>? start;

  /// Creates a new [PoolCreate].
  /// [autostart] Experimental: whether to set pool autostart on the host. Defaults to true. Subject to change.
  /// [build] Experimental: whether to run StoragePoolBuild for this pool. If unset, provider default behavior applies. Subject to change.
  /// [start] Experimental: whether to start the pool after definition. Defaults to true. Subject to change.
  const PoolCreate({
    this.autostart,
    this.build,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autostart': ?autostart,
      'build': ?build,
      'start': ?start,
    };
  }

  factory PoolCreate.fromMap(Map<String, dynamic> map) {
    return PoolCreate(
      autostart: (() { final guardedValue = map['autostart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
