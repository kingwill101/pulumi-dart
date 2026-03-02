// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_reference.dart';

/// ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
class ISCSIPersistentVolumeSource {
  /// chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
  final pulumi.Input<bool>? chapAuthDiscovery;
  /// chapAuthSession defines whether support iSCSI Session CHAP authentication
  final pulumi.Input<bool>? chapAuthSession;
  /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
  final pulumi.Input<String>? fsType;
  /// initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
  final pulumi.Input<String>? initiatorName;
  /// iqn is Target iSCSI Qualified Name.
  final pulumi.Input<String> iqn;
  /// iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  final pulumi.Input<String>? iscsiInterface;
  /// lun is iSCSI Target Lun number.
  final pulumi.Input<int> lun;
  /// portals is the iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final pulumi.Input<List<String>>? portals;
  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  final pulumi.Input<bool>? readOnly;
  /// secretRef is the CHAP Secret for iSCSI target and initiator authentication
  final pulumi.Input<SecretReference>? secretRef;
  /// targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final pulumi.Input<String> targetPortal;

  /// Creates a new [ISCSIPersistentVolumeSource].
  /// [chapAuthDiscovery] chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
  /// [chapAuthSession] chapAuthSession defines whether support iSCSI Session CHAP authentication
  /// [fsType] fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
  /// [initiatorName] initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
  /// [iqn] iqn is Target iSCSI Qualified Name.
  /// [iscsiInterface] iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  /// [lun] lun is iSCSI Target Lun number.
  /// [portals] portals is the iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  /// [readOnly] readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  /// [secretRef] secretRef is the CHAP Secret for iSCSI target and initiator authentication
  /// [targetPortal] targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  ISCSIPersistentVolumeSource({
    this.chapAuthDiscovery,
    this.chapAuthSession,
    this.fsType,
    this.initiatorName,
    required this.iqn,
    this.iscsiInterface,
    required this.lun,
    this.portals,
    this.readOnly,
    this.secretRef,
    required this.targetPortal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chapAuthDiscovery': ?chapAuthDiscovery,
      'chapAuthSession': ?chapAuthSession,
      'fsType': ?fsType,
      'initiatorName': ?initiatorName,
      'iqn': iqn,
      'iscsiInterface': ?iscsiInterface,
      'lun': lun,
      'portals': ?portals,
      'readOnly': ?readOnly,
      'secretRef': ?pulumi.Input.mapOptionalInputValue<SecretReference, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
      'targetPortal': targetPortal,
    };
  }

  factory ISCSIPersistentVolumeSource.fromMap(Map<String, dynamic> map) {
    return ISCSIPersistentVolumeSource(
      chapAuthDiscovery: map['chapAuthDiscovery'] == null ? null : (map['chapAuthDiscovery'] as bool).input(),
      chapAuthSession: map['chapAuthSession'] == null ? null : (map['chapAuthSession'] as bool).input(),
      fsType: map['fsType'] == null ? null : (map['fsType'] as String).input(),
      initiatorName: map['initiatorName'] == null ? null : (map['initiatorName'] as String).input(),
      iqn: (map['iqn'] as String).input(),
      iscsiInterface: map['iscsiInterface'] == null ? null : (map['iscsiInterface'] as String).input(),
      lun: (map['lun'] as int).input(),
      portals: map['portals'] == null ? null : ((map['portals'] as List).cast<String>()).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      secretRef: map['secretRef'] == null ? null : (SecretReference.fromMap((map['secretRef'] as Map).cast<String, dynamic>())).input(),
      targetPortal: (map['targetPortal'] as String).input(),
    );
  }
}

