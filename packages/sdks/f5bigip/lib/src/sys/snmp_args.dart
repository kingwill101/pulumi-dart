// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sys_snmp_snmp_args_doc}
/// The set of arguments for Snmp.
/// {@endtemplate}
/// {@macro pulumi_sys_snmp_snmp_args_doc}
class SnmpArgs {
  /// Configures hosts or networks from which snmpd can accept traffic. Entries go directly into hosts.allow.
  final pulumi.Input<List<String>>? allowedaddresses;
  /// Specifies the contact information for the system administrator.
  final pulumi.Input<String>? sysContact;
  /// Describes the system's physical location.
  final pulumi.Input<String>? sysLocation;

  /// Creates a new [SnmpArgs].
  /// [allowedaddresses] Configures hosts or networks from which snmpd can accept traffic. Entries go directly into hosts.allow.
  /// [sysContact] Specifies the contact information for the system administrator.
  /// [sysLocation] Describes the system's physical location.
  const SnmpArgs({
    this.allowedaddresses,
    this.sysContact,
    this.sysLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedaddresses': ?allowedaddresses,
      'sysContact': ?sysContact,
      'sysLocation': ?sysLocation,
    };
  }

  factory SnmpArgs.fromMap(Map<String, dynamic> map) {
    return SnmpArgs(
      allowedaddresses: (() { final guardedValue = map['allowedaddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sysContact: (() { final guardedValue = map['sysContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sysLocation: (() { final guardedValue = map['sysLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

