// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_service_response.dart';

/// A list of services that support encryption.
class EncryptionServicesResponse {
  /// The encryption function of the blob storage service.
  final EncryptionServiceResponse? blob;
  /// The encryption function of the file storage service.
  final EncryptionServiceResponse? file;
  /// The encryption function of the queue storage service.
  final EncryptionServiceResponse? queue;
  /// The encryption function of the table storage service.
  final EncryptionServiceResponse? table;

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
      'blob': ?blob == null ? null : blob!.toMap(),
      'file': ?file == null ? null : file!.toMap(),
      'queue': ?queue == null ? null : queue!.toMap(),
      'table': ?table == null ? null : table!.toMap(),
    };
  }

  factory EncryptionServicesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionServicesResponse(
      blob: map['blob'] == null ? null : EncryptionServiceResponse.fromMap((map['blob'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : EncryptionServiceResponse.fromMap((map['file'] as Map).cast<String, dynamic>()),
      queue: map['queue'] == null ? null : EncryptionServiceResponse.fromMap((map['queue'] as Map).cast<String, dynamic>()),
      table: map['table'] == null ? null : EncryptionServiceResponse.fromMap((map['table'] as Map).cast<String, dynamic>()),
    );
  }
}

