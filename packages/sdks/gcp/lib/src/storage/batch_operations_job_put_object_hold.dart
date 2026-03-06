// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchOperationsJobPutObjectHold {
  /// set/unset to update event based hold for objects.
  final pulumi.Input<String>? eventBasedHold;
  /// set/unset to update temporary based hold for objects.
  final pulumi.Input<String>? temporaryHold;

  /// Creates a new [BatchOperationsJobPutObjectHold].
  /// [eventBasedHold] set/unset to update event based hold for objects.
  /// [temporaryHold] set/unset to update temporary based hold for objects.
  const BatchOperationsJobPutObjectHold({
    this.eventBasedHold,
    this.temporaryHold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBasedHold': ?eventBasedHold,
      'temporaryHold': ?temporaryHold,
    };
  }

  factory BatchOperationsJobPutObjectHold.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobPutObjectHold(
      eventBasedHold: (() { final guardedValue = map['eventBasedHold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      temporaryHold: (() { final guardedValue = map['temporaryHold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

