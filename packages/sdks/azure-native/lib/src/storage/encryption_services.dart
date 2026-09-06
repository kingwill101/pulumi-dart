// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_service.dart';

/// A list of services that support encryption.
class EncryptionServices {
  /// The encryption function of the blob storage service.
  final pulumi.Input<EncryptionService?>? blob;
  /// The encryption function of the file storage service.
  final pulumi.Input<EncryptionService?>? file;
  /// The encryption function of the queue storage service.
  final pulumi.Input<EncryptionService?>? queue;
  /// The encryption function of the table storage service.
  final pulumi.Input<EncryptionService?>? table;

  /// Creates a new [EncryptionServices].
  /// [blob] The encryption function of the blob storage service.
  /// [file] The encryption function of the file storage service.
  /// [queue] The encryption function of the queue storage service.
  /// [table] The encryption function of the table storage service.
  const EncryptionServices({
    this.blob,
    this.file,
    this.queue,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blob': ?pulumi.Input.mapOptionalInputValue<EncryptionService, Map<String, dynamic>>(blob, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<EncryptionService, Map<String, dynamic>>(file, (value) => value.toMap()),
      'queue': ?pulumi.Input.mapOptionalInputValue<EncryptionService, Map<String, dynamic>>(queue, (value) => value.toMap()),
      'table': ?pulumi.Input.mapOptionalInputValue<EncryptionService, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory EncryptionServices.fromMap(Map<String, dynamic> map) {
    return EncryptionServices(
      blob: (() { final guardedValue = map['blob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queue: (() { final guardedValue = map['queue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
