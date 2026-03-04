// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_file_sec_label.dart';

class DomainDevicesDiskSourceFile {
  /// Sets the file descriptor group for the file specified in the backing store source.
  final pulumi.Input<String>? fdGroup;

  /// Specifies the actual file referenced in the backing store source configuration.
  final pulumi.Input<String>? file;

  /// Configures the security label associated with the file in the backing store source.
  final pulumi.Input<List<DomainDevicesDiskSourceFileSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskSourceFile].
  /// [fdGroup] Sets the file descriptor group for the file specified in the backing store source.
  /// [file] Specifies the actual file referenced in the backing store source configuration.
  /// [secLabels] Configures the security label associated with the file in the backing store source.
  DomainDevicesDiskSourceFile({this.fdGroup, this.file, this.secLabels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fdGroup': ?fdGroup,
      'file': ?file,
      'secLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDevicesDiskSourceFileSecLabel>,
            List<Map<String, dynamic>>
          >(
            secLabels,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesDiskSourceFileSecLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainDevicesDiskSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceFile(
      fdGroup: (() {
        final guardedValue = map['fdGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      file: (() {
        final guardedValue = map['file'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secLabels: (() {
        final guardedValue = map['secLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainDevicesDiskSourceFileSecLabel>(
            guardedValue,
            (value) => DomainDevicesDiskSourceFileSecLabel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
