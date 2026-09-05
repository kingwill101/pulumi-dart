// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_clock_timer.dart';

class DomainClock {
  /// Sets the amount by which the guest's clock is adjusted during timekeeping.
  final pulumi.Input<String?>? adjustment;
  /// Specifies the basis for the clock adjustments, usually defining a time reference.
  final pulumi.Input<String?>? basis;
  /// Configures an offset to the guest's clock time, allowing for time synchronization.
  final pulumi.Input<String?>? offset;
  /// Determines when the clock starts, affecting how time is counted in the guest.
  final pulumi.Input<double?>? start;
  /// Sets the time zone for the guest clock, influencing the display of local time.
  final pulumi.Input<String?>? timeZone;
  /// Configures timer settings that manage clock updates and adjustments.
  final pulumi.Input<List<DomainClockTimer>?>? timers;

  /// Creates a new [DomainClock].
  /// [adjustment] Sets the amount by which the guest's clock is adjusted during timekeeping.
  /// [basis] Specifies the basis for the clock adjustments, usually defining a time reference.
  /// [offset] Configures an offset to the guest's clock time, allowing for time synchronization.
  /// [start] Determines when the clock starts, affecting how time is counted in the guest.
  /// [timeZone] Sets the time zone for the guest clock, influencing the display of local time.
  /// [timers] Configures timer settings that manage clock updates and adjustments.
  const DomainClock({
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
      adjustment: (() { final guardedValue = map['adjustment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      basis: (() { final guardedValue = map['basis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timers: (() { final guardedValue = map['timers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainClockTimer>(guardedValue, (value) => DomainClockTimer.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
