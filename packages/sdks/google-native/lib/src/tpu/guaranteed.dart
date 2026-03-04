// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Guaranteed tier definition.
class Guaranteed {
  /// Optional. Defines the minimum duration of the guarantee. If specified, the requested resources will only be provisioned if they can be allocated for at least the given duration.
  final pulumi.Input<String>? minDuration;

  /// Optional. Specifies the request should be scheduled on reserved capacity.
  final pulumi.Input<bool>? reserved;

  /// Creates a new [Guaranteed].
  /// [minDuration] Optional. Defines the minimum duration of the guarantee. If specified, the requested resources will only be provisioned if they can be allocated for at least the given duration.
  /// [reserved] Optional. Specifies the request should be scheduled on reserved capacity.
  Guaranteed({this.minDuration, this.reserved});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minDuration': ?minDuration,
      'reserved': ?reserved,
    };
  }

  factory Guaranteed.fromMap(Map<String, dynamic> map) {
    return Guaranteed(
      minDuration: (() {
        final guardedValue = map['minDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reserved: (() {
        final guardedValue = map['reserved'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
