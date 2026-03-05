// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference_patch.dart';

/// Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
class ISCSIVolumeSourcePatch {
  /// chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
  final pulumi.Input<bool>? chapAuthDiscovery;
  /// chapAuthSession defines whether support iSCSI Session CHAP authentication
  final pulumi.Input<bool>? chapAuthSession;
  /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
  final pulumi.Input<String>? fsType;
  /// initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface &lt;target portal&gt;:&lt;volume name&gt; will be created for the connection.
  final pulumi.Input<String>? initiatorName;
  /// iqn is the target iSCSI Qualified Name.
  final pulumi.Input<String>? iqn;
  /// iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  final pulumi.Input<String>? iscsiInterface;
  /// lun represents iSCSI Target Lun number.
  final pulumi.Input<int>? lun;
  /// portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final pulumi.Input<List<String>>? portals;
  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  final pulumi.Input<bool>? readOnly;
  /// secretRef is the CHAP Secret for iSCSI target and initiator authentication
  final pulumi.Input<LocalObjectReferencePatch>? secretRef;
  /// targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  final pulumi.Input<String>? targetPortal;

  /// Creates a new [ISCSIVolumeSourcePatch].
  /// [chapAuthDiscovery] chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
  /// [chapAuthSession] chapAuthSession defines whether support iSCSI Session CHAP authentication
  /// [fsType] fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
  /// [initiatorName] initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface &lt;target portal&gt;:&lt;volume name&gt; will be created for the connection.
  /// [iqn] iqn is the target iSCSI Qualified Name.
  /// [iscsiInterface] iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  /// [lun] lun represents iSCSI Target Lun number.
  /// [portals] portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  /// [readOnly] readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  /// [secretRef] secretRef is the CHAP Secret for iSCSI target and initiator authentication
  /// [targetPortal] targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  ISCSIVolumeSourcePatch({
    this.chapAuthDiscovery,
    this.chapAuthSession,
    this.fsType,
    this.initiatorName,
    this.iqn,
    this.iscsiInterface,
    this.lun,
    this.portals,
    this.readOnly,
    this.secretRef,
    this.targetPortal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chapAuthDiscovery': ?chapAuthDiscovery,
      'chapAuthSession': ?chapAuthSession,
      'fsType': ?fsType,
      'initiatorName': ?initiatorName,
      'iqn': ?iqn,
      'iscsiInterface': ?iscsiInterface,
      'lun': ?lun,
      'portals': ?portals,
      'readOnly': ?readOnly,
      'secretRef': ?pulumi.Input.mapOptionalInputValue<LocalObjectReferencePatch, Map<String, dynamic>>(secretRef, (value) => value.toMap()),
      'targetPortal': ?targetPortal,
    };
  }

  factory ISCSIVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return ISCSIVolumeSourcePatch(
      chapAuthDiscovery: (() { final guardedValue = map['chapAuthDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      chapAuthSession: (() { final guardedValue = map['chapAuthSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fsType: (() { final guardedValue = map['fsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initiatorName: (() { final guardedValue = map['initiatorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iqn: (() { final guardedValue = map['iqn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iscsiInterface: (() { final guardedValue = map['iscsiInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lun: (() { final guardedValue = map['lun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      portals: (() { final guardedValue = map['portals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetPortal: (() { final guardedValue = map['targetPortal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

