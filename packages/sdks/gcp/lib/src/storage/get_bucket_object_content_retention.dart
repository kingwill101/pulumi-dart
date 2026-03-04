// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketObjectContentRetention {
  /// The object retention mode. Supported values include: "Unlocked", "Locked".
  final pulumi.Input<String> mode;

  /// Time in RFC 3339 (e.g. 2030-01-01T02:03:04Z) until which object retention protects this object.
  final pulumi.Input<String> retainUntilTime;

  /// Creates a new [GetBucketObjectContentRetention].
  /// [mode] The object retention mode. Supported values include: "Unlocked", "Locked".
  /// [retainUntilTime] Time in RFC 3339 (e.g. 2030-01-01T02:03:04Z) until which object retention protects this object.
  GetBucketObjectContentRetention({
    required this.mode,
    required this.retainUntilTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode, 'retainUntilTime': retainUntilTime};
  }

  factory GetBucketObjectContentRetention.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentRetention(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      retainUntilTime: pulumi.Input.fromValue(map['retainUntilTime'] as String),
    );
  }
}
