// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_clock_timer_catch_up.dart';

class DomainClockTimer {
  /// Sets parameters for catching up time when the guest clock falls behind.
  final pulumi.Input<DomainClockTimerCatchUp>? catchUp;
  /// Configures the frequency of timer interrupts for managing clock updates.
  final pulumi.Input<double>? frequency;
  /// Specifies the operational mode of the timer, affecting how it functions in the domain.
  final pulumi.Input<String>? mode;
  /// Sets a name for the timer used in the domain, which can be for identification purposes.
  final pulumi.Input<String> name;
  /// Indicates the presence of a timer in the domain configuration.
  final pulumi.Input<String>? present;
  /// Configures the tick policy for the timer, influencing how timekeeping events are managed.
  final pulumi.Input<String>? tickPolicy;
  /// Specifies whether to track the timer's state, affecting timed operations.
  final pulumi.Input<String>? track;

  /// Creates a new [DomainClockTimer].
  /// [catchUp] Sets parameters for catching up time when the guest clock falls behind.
  /// [frequency] Configures the frequency of timer interrupts for managing clock updates.
  /// [mode] Specifies the operational mode of the timer, affecting how it functions in the domain.
  /// [name] Sets a name for the timer used in the domain, which can be for identification purposes.
  /// [present] Indicates the presence of a timer in the domain configuration.
  /// [tickPolicy] Configures the tick policy for the timer, influencing how timekeeping events are managed.
  /// [track] Specifies whether to track the timer's state, affecting timed operations.
  DomainClockTimer({
    this.catchUp,
    this.frequency,
    this.mode,
    required this.name,
    this.present,
    this.tickPolicy,
    this.track,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catchUp': ?pulumi.Input.mapOptionalInputValue<DomainClockTimerCatchUp, Map<String, dynamic>>(catchUp, (value) => value.toMap()),
      'frequency': ?frequency,
      'mode': ?mode,
      'name': name,
      'present': ?present,
      'tickPolicy': ?tickPolicy,
      'track': ?track,
    };
  }

  factory DomainClockTimer.fromMap(Map<String, dynamic> map) {
    return DomainClockTimer(
      catchUp: map['catchUp'] == null ? null : (DomainClockTimerCatchUp.fromMap((map['catchUp'] as Map).cast<String, dynamic>())).input(),
      frequency: map['frequency'] == null ? null : (map['frequency'] as double).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      name: (map['name'] as String).input(),
      present: map['present'] == null ? null : (map['present'] as String).input(),
      tickPolicy: map['tickPolicy'] == null ? null : (map['tickPolicy'] as String).input(),
      track: map['track'] == null ? null : (map['track'] as String).input(),
    );
  }
}

