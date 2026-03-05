// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeMountOption {
  /// (Output)
  /// Export path of the volume.
  final pulumi.Input<String>? export;
  /// (Output)
  /// Full export path of the volume.
  /// Format for NFS volumes: `&lt;export_ip&gt;:/&lt;shareName&gt;`
  /// Format for SMB volumes: `\\\\netbios_prefix-four_random_hex_letters.domain_name\\shareName`
  final pulumi.Input<String>? exportFull;
  /// (Output)
  /// Human-readable mount instructions.
  final pulumi.Input<String>? instructions;
  /// (Output)
  /// IP Address.
  final pulumi.Input<String>? ipAddress;
  /// (Output)
  /// Protocol to mount with.
  final pulumi.Input<String>? protocol;

  /// Creates a new [VolumeMountOption].
  /// [export] (Output)
  /// [exportFull] (Output)
  /// [instructions] (Output)
  /// [ipAddress] (Output)
  /// [protocol] (Output)
  VolumeMountOption({
    this.export,
    this.exportFull,
    this.instructions,
    this.ipAddress,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'export': ?export,
      'exportFull': ?exportFull,
      'instructions': ?instructions,
      'ipAddress': ?ipAddress,
      'protocol': ?protocol,
    };
  }

  factory VolumeMountOption.fromMap(Map<String, dynamic> map) {
    return VolumeMountOption(
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportFull: (() { final guardedValue = map['exportFull']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instructions: (() { final guardedValue = map['instructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

