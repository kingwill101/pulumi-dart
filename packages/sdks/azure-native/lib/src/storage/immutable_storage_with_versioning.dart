// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object level immutability properties of the container.
class ImmutableStorageWithVersioning {
  /// This is an immutable property, when set to true it enables object level immutability at the container level.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ImmutableStorageWithVersioning].
  /// [enabled] This is an immutable property, when set to true it enables object level immutability at the container level.
  const ImmutableStorageWithVersioning({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ImmutableStorageWithVersioning.fromMap(Map<String, dynamic> map) {
    return ImmutableStorageWithVersioning(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

