// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NfsAccessPointAccessPolicy {
  /// Anonymous GID mapped for NFS clients. Defaults to `65534`.
  final pulumi.Input<int>? anongid;
  /// Anonymous UID mapped for NFS clients. Defaults to `65534`.
  final pulumi.Input<int>? anonuid;
  /// Whether identity enforcement is enabled. Defaults to `false`.
  final pulumi.Input<bool>? identityEnforcementEnabled;
  /// List of NFS protocols. Defaults to `["NFS4"]`.
  final pulumi.Input<List<String>>? protocols;
  /// Squash configuration. Valid values are `NO_SQUASH`, `ROOT_SQUASH`, and `ALL_SQUASH`. Defaults to `ROOT_SQUASH`.
  final pulumi.Input<String>? squashConfig;

  /// Creates a new [NfsAccessPointAccessPolicy].
  /// [anongid] Anonymous GID mapped for NFS clients. Defaults to `65534`.
  /// [anonuid] Anonymous UID mapped for NFS clients. Defaults to `65534`.
  /// [identityEnforcementEnabled] Whether identity enforcement is enabled. Defaults to `false`.
  /// [protocols] List of NFS protocols. Defaults to `["NFS4"]`.
  /// [squashConfig] Squash configuration. Valid values are `NO_SQUASH`, `ROOT_SQUASH`, and `ALL_SQUASH`. Defaults to `ROOT_SQUASH`.
  const NfsAccessPointAccessPolicy({
    this.anongid,
    this.anonuid,
    this.identityEnforcementEnabled,
    this.protocols,
    this.squashConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anongid': ?anongid,
      'anonuid': ?anonuid,
      'identityEnforcementEnabled': ?identityEnforcementEnabled,
      'protocols': ?protocols,
      'squashConfig': ?squashConfig,
    };
  }

  factory NfsAccessPointAccessPolicy.fromMap(Map<String, dynamic> map) {
    return NfsAccessPointAccessPolicy(
      anongid: (() { final guardedValue = map['anongid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      anonuid: (() { final guardedValue = map['anonuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      identityEnforcementEnabled: (() { final guardedValue = map['identityEnforcementEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      squashConfig: (() { final guardedValue = map['squashConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
