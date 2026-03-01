// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_service.dart';

/// A list of services that support encryption.
class EncryptionServices {
  /// The encryption function of the blob storage service.
  final EncryptionService? blob;
  /// The encryption function of the file storage service.
  final EncryptionService? file;
  /// The encryption function of the queue storage service.
  final EncryptionService? queue;
  /// The encryption function of the table storage service.
  final EncryptionService? table;

  /// Creates a new [EncryptionServices].
  /// [blob] The encryption function of the blob storage service.
  /// [file] The encryption function of the file storage service.
  /// [queue] The encryption function of the queue storage service.
  /// [table] The encryption function of the table storage service.
  EncryptionServices({
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

  factory EncryptionServices.fromMap(Map<String, dynamic> map) {
    return EncryptionServices(
      blob: map['blob'] == null ? null : EncryptionService.fromMap((map['blob'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : EncryptionService.fromMap((map['file'] as Map).cast<String, dynamic>()),
      queue: map['queue'] == null ? null : EncryptionService.fromMap((map['queue'] as Map).cast<String, dynamic>()),
      table: map['table'] == null ? null : EncryptionService.fromMap((map['table'] as Map).cast<String, dynamic>()),
    );
  }
}

