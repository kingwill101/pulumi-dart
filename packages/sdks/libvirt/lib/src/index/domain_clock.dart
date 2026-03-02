// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_clock_timer.dart';

class DomainClock {
  /// Sets the amount by which the guest's clock is adjusted during timekeeping.
  final pulumi.Input<String>? adjustment;
  /// Specifies the basis for the clock adjustments, usually defining a time reference.
  final pulumi.Input<String>? basis;
  /// Configures an offset to the guest's clock time, allowing for time synchronization.
  final pulumi.Input<String>? offset;
  /// Determines when the clock starts, affecting how time is counted in the guest.
  final pulumi.Input<double>? start;
  /// Sets the time zone for the guest clock, influencing the display of local time.
  final pulumi.Input<String>? timeZone;
  /// Configures timer settings that manage clock updates and adjustments.
  final pulumi.Input<List<DomainClockTimer>>? timers;

  /// Creates a new [DomainClock].
  /// [adjustment] Sets the amount by which the guest's clock is adjusted during timekeeping.
  /// [basis] Specifies the basis for the clock adjustments, usually defining a time reference.
  /// [offset] Configures an offset to the guest's clock time, allowing for time synchronization.
  /// [start] Determines when the clock starts, affecting how time is counted in the guest.
  /// [timeZone] Sets the time zone for the guest clock, influencing the display of local time.
  /// [timers] Configures timer settings that manage clock updates and adjustments.
  DomainClock({
    this.adjustment,
    this.basis,
    this.offset,
    this.start,
    this.timeZone,
    this.timers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustment': ?adjustment,
      'basis': ?basis,
      'offset': ?offset,
      'start': ?start,
      'timeZone': ?timeZone,
      'timers': ?pulumi.Input.mapOptionalInputValue<List<DomainClockTimer>, List<Map<String, dynamic>>>(timers, (value) => pulumi.Input.encodeList<DomainClockTimer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainClock.fromMap(Map<String, dynamic> map) {
    return DomainClock(
      adjustment: map['adjustment'] == null ? null : (map['adjustment']! as String).input(),
      basis: map['basis'] == null ? null : (map['basis']! as String).input(),
      offset: map['offset'] == null ? null : (map['offset']! as String).input(),
      start: map['start'] == null ? null : (map['start']! as double).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
      timers: map['timers'] == null ? null : (pulumi.Input.decodeList<DomainClockTimer>(map['timers']!, (value) => DomainClockTimer.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

