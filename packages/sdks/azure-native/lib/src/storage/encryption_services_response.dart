// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_service_response.dart';

/// A list of services that support encryption.
class EncryptionServicesResponse {
  /// The encryption function of the blob storage service.
  final pulumi.Input<EncryptionServiceResponse>? blob;
  /// The encryption function of the file storage service.
  final pulumi.Input<EncryptionServiceResponse>? file;
  /// The encryption function of the queue storage service.
  final pulumi.Input<EncryptionServiceResponse>? queue;
  /// The encryption function of the table storage service.
  final pulumi.Input<EncryptionServiceResponse>? table;

  /// Creates a new [EncryptionServicesResponse].
  /// [blob] The encryption function of the blob storage service.
  /// [file] The encryption function of the file storage service.
  /// [queue] The encryption function of the queue storage service.
  /// [table] The encryption function of the table storage service.
  EncryptionServicesResponse({
    this.blob,
    this.file,
    this.queue,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blob': ?pulumi.Input.mapOptionalInputValue<EncryptionServiceResponse, Map<String, dynamic>>(blob, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<EncryptionServiceResponse, Map<String, dynamic>>(file, (value) => value.toMap()),
      'queue': ?pulumi.Input.mapOptionalInputValue<EncryptionServiceResponse, Map<String, dynamic>>(queue, (value) => value.toMap()),
      'table': ?pulumi.Input.mapOptionalInputValue<EncryptionServiceResponse, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory EncryptionServicesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionServicesResponse(
      blob: (() { final guardedValue = map['blob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queue: (() { final guardedValue = map['queue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

