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
      'catchUp':
          ?pulumi.Input.mapOptionalInputValue<
            DomainClockTimerCatchUp,
            Map<String, dynamic>
          >(catchUp, (value) => value.toMap()),
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
      catchUp: (() {
        final guardedValue = map['catchUp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainClockTimerCatchUp.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      frequency: (() {
        final guardedValue = map['frequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      present: (() {
        final guardedValue = map['present'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tickPolicy: (() {
        final guardedValue = map['tickPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      track: (() {
        final guardedValue = map['track'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
