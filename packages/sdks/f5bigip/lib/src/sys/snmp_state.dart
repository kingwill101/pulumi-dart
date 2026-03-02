// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Snmp resources.
class SnmpState {
  /// Configures hosts or networks from which snmpd can accept traffic. Entries go directly into hosts.allow.
  final pulumi.Input<List<String>>? allowedaddresses;
  /// Specifies the contact information for the system administrator.
  final pulumi.Input<String>? sysContact;
  /// Describes the system's physical location.
  final pulumi.Input<String>? sysLocation;

  /// Creates a new [SnmpState].
  /// [allowedaddresses] Configures hosts or networks from which snmpd can accept traffic. Entries go directly into hosts.allow.
  /// [sysContact] Specifies the contact information for the system administrator.
  /// [sysLocation] Describes the system's physical location.
  SnmpState({
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

  factory SnmpState.fromMap(Map<String, dynamic> map) {
    return SnmpState(
      allowedaddresses: map['allowedaddresses'] == null ? null : ((map['allowedaddresses'] as List).cast<String>()).input(),
      sysContact: map['sysContact'] == null ? null : (map['sysContact'] as String).input(),
      sysLocation: map['sysLocation'] == null ? null : (map['sysLocation'] as String).input(),
    );
  }
}

