// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ntp resources.
class NtpState {
  /// User defined description.
  final pulumi.Input<String>? description;
  /// Specifies the time servers that the system uses to update the system time.
  final pulumi.Input<List<String>>? servers;
  /// Specifies the time zone that you want to use for the system time.
  final pulumi.Input<String>? timezone;

  /// Creates a new [NtpState].
  /// [description] User defined description.
  /// [servers] Specifies the time servers that the system uses to update the system time.
  /// [timezone] Specifies the time zone that you want to use for the system time.
  NtpState({
    this.description,
    this.servers,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'servers': ?servers,
      'timezone': ?timezone,
    };
  }

  factory NtpState.fromMap(Map<String, dynamic> map) {
    return NtpState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      servers: map['servers'] == null ? null : ((map['servers']! as List).cast<String>()).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']! as String).input(),
    );
  }
}

