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
  DomainDevicesCrypto({
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
      address: map['address'] == null ? null : ((map['address']! as Map).cast<String, dynamic>()).input(),
      alias: map['alias'] == null ? null : (DomainDevicesCryptoAlias.fromMap((map['alias']! as Map).cast<String, dynamic>())).input(),
      backend: map['backend'] == null ? null : (DomainDevicesCryptoBackend.fromMap((map['backend']! as Map).cast<String, dynamic>())).input(),
      model: map['model'] == null ? null : (map['model']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

