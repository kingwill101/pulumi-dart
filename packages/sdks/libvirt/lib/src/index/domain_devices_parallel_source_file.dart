// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_parallel_source_file_sec_label.dart';

class DomainDevicesParallelSourceFile {
  /// Specifies if data should be appended to the file used as a source.
  final pulumi.Input<String?>? append;
  /// Sets the file path for the RNG source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the file source in the EGD backend.
  final pulumi.Input<List<DomainDevicesParallelSourceFileSecLabel>?>? secLabels;

  /// Creates a new [DomainDevicesParallelSourceFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  const DomainDevicesParallelSourceFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesParallelSourceFileSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesParallelSourceFileSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesParallelSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourceFile(
      append: (() { final guardedValue = map['append']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesParallelSourceFileSecLabel>(guardedValue, (value) => DomainDevicesParallelSourceFileSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
