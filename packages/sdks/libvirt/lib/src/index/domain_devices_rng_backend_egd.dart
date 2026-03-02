// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_backend_egd_protocol.dart';
import 'domain_devices_rng_backend_egd_source.dart';

class DomainDevicesRngBackendEgd {
  /// Sets the protocol type for the EGD backend.
  final pulumi.Input<DomainDevicesRngBackendEgdProtocol>? protocol;
  /// Defines the source settings for the EGD backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSource>? source;

  /// Creates a new [DomainDevicesRngBackendEgd].
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  DomainDevicesRngBackendEgd({
    this.protocol,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DomainDevicesRngBackendEgd.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgd(
      protocol: map['protocol'] == null ? null : (DomainDevicesRngBackendEgdProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (DomainDevicesRngBackendEgdSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

