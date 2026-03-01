// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfig {
  /// The Key Database (db).
  final List<FileContentBuffer>? dbs;
  /// The forbidden key database (dbx).
  final List<FileContentBuffer>? dbxs;
  /// The Key Exchange Key (KEK).
  final List<FileContentBuffer>? keks;
  /// The Platform Key (PK).
  final FileContentBuffer? pk;

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
      'dbs': ?dbs == null ? null : pulumi.Input.encodeList<FileContentBuffer, Map<String, dynamic>>(dbs!, (value) => value.toMap()),
      'dbxs': ?dbxs == null ? null : pulumi.Input.encodeList<FileContentBuffer, Map<String, dynamic>>(dbxs!, (value) => value.toMap()),
      'keks': ?keks == null ? null : pulumi.Input.encodeList<FileContentBuffer, Map<String, dynamic>>(keks!, (value) => value.toMap()),
      'pk': ?pk == null ? null : pk!.toMap(),
    };
  }

  factory InitialStateConfig.fromMap(Map<String, dynamic> map) {
    return InitialStateConfig(
      dbs: map['dbs'] == null ? null : pulumi.Input.decodeList<FileContentBuffer>(map['dbs'], (value) => FileContentBuffer.fromMap((value as Map).cast<String, dynamic>())),
      dbxs: map['dbxs'] == null ? null : pulumi.Input.decodeList<FileContentBuffer>(map['dbxs'], (value) => FileContentBuffer.fromMap((value as Map).cast<String, dynamic>())),
      keks: map['keks'] == null ? null : pulumi.Input.decodeList<FileContentBuffer>(map['keks'], (value) => FileContentBuffer.fromMap((value as Map).cast<String, dynamic>())),
      pk: map['pk'] == null ? null : FileContentBuffer.fromMap((map['pk'] as Map).cast<String, dynamic>()),
    );
  }
}

