// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationParams {
  /// Resource manager tags to be bound to the future reservation. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;

  /// Creates a new [FutureReservationParams].
  /// [resourceManagerTags] Resource manager tags to be bound to the future reservation. Tag keys and values have the
  const FutureReservationParams({
    this.resourceManagerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceManagerTags': ?resourceManagerTags,
    };
  }

  factory FutureReservationParams.fromMap(Map<String, dynamic> map) {
    return FutureReservationParams(
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
