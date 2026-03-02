// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeExportPolicyRule {
  /// Defines the access type for clients matching the `allowedClients` specification.
  /// Possible values are: `READ_ONLY`, `READ_WRITE`, `READ_NONE`.
  final pulumi.Input<String>? accessType;
  /// Defines the client ingress specification (allowed clients) as a comma separated list with IPv4 CIDRs or IPv4 host addresses.
  final pulumi.Input<String>? allowedClients;
  /// An integer representing the anonymous user ID. Range is 0 to 4294967295. Required when `squash_mode` is `ALL_SQUASH`.
  final pulumi.Input<int>? anonUid;
  /// If enabled, the root user (UID = 0) of the specified clients doesn't get mapped to nobody (UID = 65534). This is also known as no_root_squash.
  /// Use either squash_mode or has_root_access, but never both at the same time. These parameters are mutually exclusive.
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
  /// Use either squash_mode or has_root_access, but never both at the same time. These parameters are mutually exclusive.
  /// Possible values are: `SQUASH_MODE_UNSPECIFIED`, `NO_ROOT_SQUASH`, `ROOT_SQUASH`, `ALL_SQUASH`.
  final pulumi.Input<String>? squashMode;

  /// Creates a new [VolumeExportPolicyRule].
  /// [accessType] Defines the access type for clients matching the `allowedClients` specification.
  /// [allowedClients] Defines the client ingress specification (allowed clients) as a comma separated list with IPv4 CIDRs or IPv4 host addresses.
  /// [anonUid] An integer representing the anonymous user ID. Range is 0 to 4294967295. Required when `squash_mode` is `ALL_SQUASH`.
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
  VolumeExportPolicyRule({
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
      accessType: map['accessType'] == null ? null : (map['accessType'] as String).input(),
      allowedClients: map['allowedClients'] == null ? null : (map['allowedClients'] as String).input(),
      anonUid: map['anonUid'] == null ? null : (map['anonUid'] as int).input(),
      hasRootAccess: map['hasRootAccess'] == null ? null : (map['hasRootAccess'] as String).input(),
      kerberos5ReadOnly: map['kerberos5ReadOnly'] == null ? null : (map['kerberos5ReadOnly'] as bool).input(),
      kerberos5ReadWrite: map['kerberos5ReadWrite'] == null ? null : (map['kerberos5ReadWrite'] as bool).input(),
      kerberos5iReadOnly: map['kerberos5iReadOnly'] == null ? null : (map['kerberos5iReadOnly'] as bool).input(),
      kerberos5iReadWrite: map['kerberos5iReadWrite'] == null ? null : (map['kerberos5iReadWrite'] as bool).input(),
      kerberos5pReadOnly: map['kerberos5pReadOnly'] == null ? null : (map['kerberos5pReadOnly'] as bool).input(),
      kerberos5pReadWrite: map['kerberos5pReadWrite'] == null ? null : (map['kerberos5pReadWrite'] as bool).input(),
      nfsv3: map['nfsv3'] == null ? null : (map['nfsv3'] as bool).input(),
      nfsv4: map['nfsv4'] == null ? null : (map['nfsv4'] as bool).input(),
      squashMode: map['squashMode'] == null ? null : (map['squashMode'] as String).input(),
    );
  }
}

