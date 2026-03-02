// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the SAP Enqueue Replication Server (ERS) properties.
class EnqueueReplicationServerPropertiesResponse {
  /// Defines the type of Enqueue Replication Server.
  final pulumi.Input<String> ersVersion;
  /// Defines the health of SAP Instances.
  final pulumi.Input<String> health;
  /// ERS SAP Hostname.
  final pulumi.Input<String> hostname;
  /// ERS Instance Number.
  final pulumi.Input<String> instanceNo;
  /// ERS SAP IP Address.
  final pulumi.Input<String> ipAddress;
  /// ERS SAP Kernel Patch level.
  final pulumi.Input<String> kernelPatch;
  /// ERS SAP Kernel Version.
  final pulumi.Input<String> kernelVersion;

  /// Creates a new [EnqueueReplicationServerPropertiesResponse].
  /// [ersVersion] Defines the type of Enqueue Replication Server.
  /// [health] Defines the health of SAP Instances.
  /// [hostname] ERS SAP Hostname.
  /// [instanceNo] ERS Instance Number.
  /// [ipAddress] ERS SAP IP Address.
  /// [kernelPatch] ERS SAP Kernel Patch level.
  /// [kernelVersion] ERS SAP Kernel Version.
  EnqueueReplicationServerPropertiesResponse({
    required this.ersVersion,
    required this.health,
    required this.hostname,
    required this.instanceNo,
    required this.ipAddress,
    required this.kernelPatch,
    required this.kernelVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ersVersion': ersVersion,
      'health': health,
      'hostname': hostname,
      'instanceNo': instanceNo,
      'ipAddress': ipAddress,
      'kernelPatch': kernelPatch,
      'kernelVersion': kernelVersion,
    };
  }

  factory EnqueueReplicationServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnqueueReplicationServerPropertiesResponse(
      ersVersion: (map['ersVersion'] as String).input(),
      health: (map['health'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      instanceNo: (map['instanceNo'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      kernelPatch: (map['kernelPatch'] as String).input(),
      kernelVersion: (map['kernelVersion'] as String).input(),
    );
  }
}

