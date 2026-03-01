// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_external_source_file_sec_label.dart';

class DomainDevicesTpmBackendExternalSourceFile {
  /// Specifies if data should be appended to the file used as a source.
  final String? append;
  /// Sets the file path for the RNG source in the EGD backend.
  final String path;
  /// Configures security label settings for the file source in the EGD backend.
  final List<DomainDevicesTpmBackendExternalSourceFileSecLabel>? secLabels;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  DomainDevicesTpmBackendExternalSourceFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesTpmBackendExternalSourceFileSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesTpmBackendExternalSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceFile(
      append: map['append'] == null ? null : map['append'] as String,
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesTpmBackendExternalSourceFileSecLabel>(map['secLabels'], (value) => DomainDevicesTpmBackendExternalSourceFileSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

