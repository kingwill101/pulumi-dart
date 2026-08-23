// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_crypto_alias.dart';
import 'domain_devices_crypto_backend.dart';

class DomainDevicesCrypto {
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesCryptoAlias>? alias;
  /// Sets the backend configuration for the crypto device.
  final pulumi.Input<DomainDevicesCryptoBackend>? backend;
  /// Specifies the model type for the crypto device.
  final pulumi.Input<String>? model;
  /// Sets the type attribute for the crypto device.
  final pulumi.Input<String>? type;

  /// Creates a new [DomainDevicesCrypto].
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [backend] Sets the backend configuration for the crypto device.
  /// [model] Specifies the model type for the crypto device.
  /// [type] Sets the type attribute for the crypto device.
  const DomainDevicesCrypto({
    this.address,
    this.alias,
    this.backend,
    this.model,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'alias': ?pulumi.Input.mapOptionalInputValue<DomainDevicesCryptoAlias, Map<String, dynamic>>(alias, (value) => value.toMap()),
      'backend': ?pulumi.Input.mapOptionalInputValue<DomainDevicesCryptoBackend, Map<String, dynamic>>(backend, (value) => value.toMap()),
      'model': ?model,
      'type': ?type,
    };
  }

  factory DomainDevicesCrypto.fromMap(Map<String, dynamic> map) {
    return DomainDevicesCrypto(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesCryptoAlias.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backend: (() { final guardedValue = map['backend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesCryptoBackend.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
