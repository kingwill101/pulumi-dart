// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_reference_with_status_response.dart';

/// Server farm storage mount configuration.
class StorageMountResponse {
  /// KV reference to the credentials to connect to the share.
  final pulumi.Input<KeyVaultReferenceWithStatusResponse>? credentialsKeyVaultReference;
  /// Path on worker where storage will be mounted.
  final pulumi.Input<String>? destinationPath;
  /// Name of the storage mount.
  final pulumi.Input<String>? name;
  /// Source of the fileshare/storage.
  final pulumi.Input<String>? source;
  /// Type of the storage mount.
  final pulumi.Input<String>? type;

  /// Creates a new [StorageMountResponse].
  /// [credentialsKeyVaultReference] KV reference to the credentials to connect to the share.
  /// [destinationPath] Path on worker where storage will be mounted.
  /// [name] Name of the storage mount.
  /// [source] Source of the fileshare/storage.
  /// [type] Type of the storage mount.
  const StorageMountResponse({
    this.credentialsKeyVaultReference,
    this.destinationPath,
    this.name,
    this.source,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsKeyVaultReference': ?pulumi.Input.mapOptionalInputValue<KeyVaultReferenceWithStatusResponse, Map<String, dynamic>>(credentialsKeyVaultReference, (value) => value.toMap()),
      'destinationPath': ?destinationPath,
      'name': ?name,
      'source': ?source,
      'type': ?type,
    };
  }

  factory StorageMountResponse.fromMap(Map<String, dynamic> map) {
    return StorageMountResponse(
      credentialsKeyVaultReference: (() { final guardedValue = map['credentialsKeyVaultReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultReferenceWithStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationPath: (() { final guardedValue = map['destinationPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
