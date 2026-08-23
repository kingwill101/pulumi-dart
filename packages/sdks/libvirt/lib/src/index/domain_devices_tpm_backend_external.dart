// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_external_source.dart';

class DomainDevicesTpmBackendExternal {
  /// Specifies the source configuration for the external TPM backend.
  final pulumi.Input<DomainDevicesTpmBackendExternalSource>? source;

  /// Creates a new [DomainDevicesTpmBackendExternal].
  /// [source] Specifies the source configuration for the external TPM backend.
  const DomainDevicesTpmBackendExternal({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesTpmBackendExternal.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternal(
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
