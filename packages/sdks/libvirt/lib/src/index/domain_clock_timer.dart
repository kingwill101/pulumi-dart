// ignore_for_file: unused_element, unnecessary_cast

import 'domain_clock_timer_catch_up.dart';

class DomainClockTimer {
  /// Sets parameters for catching up time when the guest clock falls behind.
  final DomainClockTimerCatchUp? catchUp;
  /// Configures the frequency of timer interrupts for managing clock updates.
  final double? frequency;
  /// Specifies the operational mode of the timer, affecting how it functions in the domain.
  final String? mode;
  /// Sets a name for the timer used in the domain, which can be for identification purposes.
  final String name;
  /// Indicates the presence of a timer in the domain configuration.
  final String? present;
  /// Configures the tick policy for the timer, influencing how timekeeping events are managed.
  final String? tickPolicy;
  /// Specifies whether to track the timer's state, affecting timed operations.
  final String? track;

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
      'catchUp': ?catchUp == null ? null : catchUp!.toMap(),
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
      catchUp: map['catchUp'] == null ? null : DomainClockTimerCatchUp.fromMap((map['catchUp'] as Map).cast<String, dynamic>()),
      frequency: map['frequency'] == null ? null : map['frequency'] as double,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] as String,
      present: map['present'] == null ? null : map['present'] as String,
      tickPolicy: map['tickPolicy'] == null ? null : map['tickPolicy'] as String,
      track: map['track'] == null ? null : map['track'] as String,
    );
  }
}

