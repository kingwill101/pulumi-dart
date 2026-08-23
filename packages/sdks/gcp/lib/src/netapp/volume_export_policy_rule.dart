// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeExportPolicyRule {
  /// Defines the access type for clients matching the `allowedClients` specification.
  /// Possible values are: `READ_ONLY`, `READ_WRITE`, `READ_NONE`.
  final pulumi.Input<String>? accessType;
  /// Defines the client ingress specification (allowed clients) as a comma separated list with IPv4 CIDRs or IPv4 host addresses.
  final pulumi.Input<String>? allowedClients;
  /// An integer representing the anonymous user ID. Range is 0 to 4294967295. Required when `squashMode` is `ALL_SQUASH`.
  final pulumi.Input<int>? anonUid;
  /// If enabled, the root user (UID = 0) of the specified clients doesn't get mapped to nobody (UID = 65534). This is also known as no_root_squash.
  /// Use either squashMode or has_root_access, but never both at the same time. These parameters are mutually exclusive.
  final pulumi.Input<String>? hasRootAccess;
  /// If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode.
  final pulumi.Input<bool>? kerberos5ReadOnly;
  /// If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode. The 'kerberos5ReadOnly' value is ignored if this is enabled.
  final pulumi.Input<bool>? kerberos5ReadWrite;
  /// If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode.
  final pulumi.Input<bool>? kerberos5iReadOnly;
  /// If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode. The 'kerberos5iReadOnly' value is ignored if this is enabled.
  final pulumi.Input<bool>? kerberos5iReadWrite;
  /// If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode.
  final pulumi.Input<bool>? kerberos5pReadOnly;
  /// If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode. The 'kerberos5pReadOnly' value is ignored if this is enabled.
  final pulumi.Input<bool>? kerberos5pReadWrite;
  /// Enable to apply the export rule to NFSV3 clients.
  final pulumi.Input<bool>? nfsv3;
  /// Enable to apply the export rule to NFSV4.1 clients.
  final pulumi.Input<bool>? nfsv4;
  /// SquashMode defines how remote user privileges are restricted when accessing an NFS export. It controls how the user identities (like root) are mapped to anonymous users to limit access and enforce security.
  /// Use either squashMode or has_root_access, but never both at the same time. These parameters are mutually exclusive.
  /// Possible values are: `SQUASH_MODE_UNSPECIFIED`, `NO_ROOT_SQUASH`, `ROOT_SQUASH`, `ALL_SQUASH`.
  final pulumi.Input<String>? squashMode;

  /// Creates a new [VolumeExportPolicyRule].
  /// [accessType] Defines the access type for clients matching the `allowedClients` specification.
  /// [allowedClients] Defines the client ingress specification (allowed clients) as a comma separated list with IPv4 CIDRs or IPv4 host addresses.
  /// [anonUid] An integer representing the anonymous user ID. Range is 0 to 4294967295. Required when `squashMode` is `ALL_SQUASH`.
  /// [hasRootAccess] If enabled, the root user (UID = 0) of the specified clients doesn't get mapped to nobody (UID = 65534). This is also known as no_root_squash.
  /// [kerberos5ReadOnly] If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode.
  /// [kerberos5ReadWrite] If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode. The 'kerberos5ReadOnly' value is ignored if this is enabled.
  /// [kerberos5iReadOnly] If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode.
  /// [kerberos5iReadWrite] If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode. The 'kerberos5iReadOnly' value is ignored if this is enabled.
  /// [kerberos5pReadOnly] If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode.
  /// [kerberos5pReadWrite] If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode. The 'kerberos5pReadOnly' value is ignored if this is enabled.
  /// [nfsv3] Enable to apply the export rule to NFSV3 clients.
  /// [nfsv4] Enable to apply the export rule to NFSV4.1 clients.
  /// [squashMode] SquashMode defines how remote user privileges are restricted when accessing an NFS export. It controls how the user identities (like root) are mapped to anonymous users to limit access and enforce security.
  const VolumeExportPolicyRule({
    this.accessType,
    this.allowedClients,
    this.anonUid,
    this.hasRootAccess,
    this.kerberos5ReadOnly,
    this.kerberos5ReadWrite,
    this.kerberos5iReadOnly,
    this.kerberos5iReadWrite,
    this.kerberos5pReadOnly,
    this.kerberos5pReadWrite,
    this.nfsv3,
    this.nfsv4,
    this.squashMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'allowedClients': ?allowedClients,
      'anonUid': ?anonUid,
      'hasRootAccess': ?hasRootAccess,
      'kerberos5ReadOnly': ?kerberos5ReadOnly,
      'kerberos5ReadWrite': ?kerberos5ReadWrite,
      'kerberos5iReadOnly': ?kerberos5iReadOnly,
      'kerberos5iReadWrite': ?kerberos5iReadWrite,
      'kerberos5pReadOnly': ?kerberos5pReadOnly,
      'kerberos5pReadWrite': ?kerberos5pReadWrite,
      'nfsv3': ?nfsv3,
      'nfsv4': ?nfsv4,
      'squashMode': ?squashMode,
    };
  }

  factory VolumeExportPolicyRule.fromMap(Map<String, dynamic> map) {
    return VolumeExportPolicyRule(
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedClients: (() { final guardedValue = map['allowedClients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      anonUid: (() { final guardedValue = map['anonUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hasRootAccess: (() { final guardedValue = map['hasRootAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kerberos5ReadOnly: (() { final guardedValue = map['kerberos5ReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5ReadWrite: (() { final guardedValue = map['kerberos5ReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5iReadOnly: (() { final guardedValue = map['kerberos5iReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5iReadWrite: (() { final guardedValue = map['kerberos5iReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5pReadOnly: (() { final guardedValue = map['kerberos5pReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kerberos5pReadWrite: (() { final guardedValue = map['kerberos5pReadWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nfsv3: (() { final guardedValue = map['nfsv3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nfsv4: (() { final guardedValue = map['nfsv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      squashMode: (() { final guardedValue = map['squashMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
