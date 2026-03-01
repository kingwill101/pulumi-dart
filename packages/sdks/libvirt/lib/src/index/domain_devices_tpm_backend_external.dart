// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_tpm_backend_external_source.dart';

class DomainDevicesTpmBackendExternal {
  /// Specifies the source configuration for the external TPM backend.
  final DomainDevicesTpmBackendExternalSource? source;

  /// Creates a new [DomainDevicesTpmBackendExternal].
  /// [source] Specifies the source configuration for the external TPM backend.
  DomainDevicesTpmBackendExternal({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesTpmBackendExternal.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternal(
      source: map['source'] == null ? null : DomainDevicesTpmBackendExternalSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

