// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfig {
  /// The Key Database (db).
  final pulumi.Input<List<FileContentBuffer>>? dbs;
  /// The forbidden key database (dbx).
  final pulumi.Input<List<FileContentBuffer>>? dbxs;
  /// The Key Exchange Key (KEK).
  final pulumi.Input<List<FileContentBuffer>>? keks;
  /// The Platform Key (PK).
  final pulumi.Input<FileContentBuffer>? pk;

  /// Creates a new [InitialStateConfig].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  InitialStateConfig({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs': ?pulumi.Input.mapOptionalInputValue<List<FileContentBuffer>, List<Map<String, dynamic>>>(dbs, (value) => pulumi.Input.encodeList<FileContentBuffer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbxs': ?pulumi.Input.mapOptionalInputValue<List<FileContentBuffer>, List<Map<String, dynamic>>>(dbxs, (value) => pulumi.Input.encodeList<FileContentBuffer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keks': ?pulumi.Input.mapOptionalInputValue<List<FileContentBuffer>, List<Map<String, dynamic>>>(keks, (value) => pulumi.Input.encodeList<FileContentBuffer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pk': ?pulumi.Input.mapOptionalInputValue<FileContentBuffer, Map<String, dynamic>>(pk, (value) => value.toMap()),
    };
  }

  factory InitialStateConfig.fromMap(Map<String, dynamic> map) {
    return InitialStateConfig(
      dbs: map['dbs'] == null ? null : (pulumi.Input.decodeList<FileContentBuffer>(map['dbs'], (value) => FileContentBuffer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbxs: map['dbxs'] == null ? null : (pulumi.Input.decodeList<FileContentBuffer>(map['dbxs'], (value) => FileContentBuffer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keks: map['keks'] == null ? null : (pulumi.Input.decodeList<FileContentBuffer>(map['keks'], (value) => FileContentBuffer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pk: map['pk'] == null ? null : (FileContentBuffer.fromMap((map['pk'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

