// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object level immutability properties of the container.
class ImmutableStorageWithVersioningResponse {
  /// This is an immutable property, when set to true it enables object level immutability at the container level.
  final pulumi.Input<bool>? enabled;

  /// This property denotes the container level immutability to object level immutability migration state.
  final pulumi.Input<String> migrationState;

  /// Returns the date and time the object level immutability was enabled.
  final pulumi.Input<String> timeStamp;

  /// Creates a new [ImmutableStorageWithVersioningResponse].
  /// [enabled] This is an immutable property, when set to true it enables object level immutability at the container level.
  /// [migrationState] This property denotes the container level immutability to object level immutability migration state.
  /// [timeStamp] Returns the date and time the object level immutability was enabled.
  ImmutableStorageWithVersioningResponse({
    this.enabled,
    required this.migrationState,
    required this.timeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'migrationState': migrationState,
      'timeStamp': timeStamp,
    };
  }

  factory ImmutableStorageWithVersioningResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ImmutableStorageWithVersioningResponse(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      migrationState: pulumi.Input.fromValue(map['migrationState'] as String),
      timeStamp: pulumi.Input.fromValue(map['timeStamp'] as String),
    );
  }
}
