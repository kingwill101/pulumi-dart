// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sys_ntp_ntp_args_doc}
/// The set of arguments for Ntp.
/// {@endtemplate}
/// {@macro pulumi_sys_ntp_ntp_args_doc}
class NtpArgs {
  /// User defined description.
  final pulumi.Input<String> description;
  /// Specifies the time servers that the system uses to update the system time.
  final pulumi.Input<List<String>> servers;
  /// Specifies the time zone that you want to use for the system time.
  final pulumi.Input<String>? timezone;

  /// Creates a new [NtpArgs].
  /// [description] User defined description.
  /// [servers] Specifies the time servers that the system uses to update the system time.
  /// [timezone] Specifies the time zone that you want to use for the system time.
  NtpArgs({
    required this.description,
    required this.servers,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'servers': servers,
      'timezone': ?timezone,
    };
  }

  factory NtpArgs.fromMap(Map<String, dynamic> map) {
    return NtpArgs(
      description: (map['description'] as String).input(),
      servers: ((map['servers'] as List).cast<String>()).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']! as String).input(),
    );
  }
}

