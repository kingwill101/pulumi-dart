// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_file_sec_label.dart';

class DomainDevicesDiskMirrorBackingStoreSourceFile {
  /// Sets the file descriptor group for the file specified in the backing store source.
  final pulumi.Input<String?>? fdGroup;
  /// Specifies the actual file referenced in the backing store source configuration.
  final pulumi.Input<String?>? file;
  /// Configures the security label associated with the file in the backing store source.
  final pulumi.Input<List<DomainDevicesDiskMirrorBackingStoreSourceFileSecLabel>?>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceFile].
  /// [fdGroup] Sets the file descriptor group for the file specified in the backing store source.
  /// [file] Specifies the actual file referenced in the backing store source configuration.
  /// [secLabels] Configures the security label associated with the file in the backing store source.
  const DomainDevicesDiskMirrorBackingStoreSourceFile({
    this.fdGroup,
    this.file,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fdGroup': ?fdGroup,
      'file': ?file,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorBackingStoreSourceFileSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceFileSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceFile(
      fdGroup: (() { final guardedValue = map['fdGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceFileSecLabel>(guardedValue, (value) => DomainDevicesDiskMirrorBackingStoreSourceFileSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
