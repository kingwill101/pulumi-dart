// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_compute_beta.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigComputeBeta {
  /// The Key Database (db).
  final pulumi.Input<List<FileContentBufferComputeBeta>>? dbs;
  /// The forbidden key database (dbx).
  final pulumi.Input<List<FileContentBufferComputeBeta>>? dbxs;
  /// The Key Exchange Key (KEK).
  final pulumi.Input<List<FileContentBufferComputeBeta>>? keks;
  /// The Platform Key (PK).
  final pulumi.Input<FileContentBufferComputeBeta>? pk;

  /// Creates a new [InitialStateConfigComputeBeta].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  InitialStateConfigComputeBeta({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs': ?pulumi.Input.mapOptionalInputValue<List<FileContentBufferComputeBeta>, List<Map<String, dynamic>>>(dbs, (value) => pulumi.Input.encodeList<FileContentBufferComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbxs': ?pulumi.Input.mapOptionalInputValue<List<FileContentBufferComputeBeta>, List<Map<String, dynamic>>>(dbxs, (value) => pulumi.Input.encodeList<FileContentBufferComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keks': ?pulumi.Input.mapOptionalInputValue<List<FileContentBufferComputeBeta>, List<Map<String, dynamic>>>(keks, (value) => pulumi.Input.encodeList<FileContentBufferComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pk': ?pulumi.Input.mapOptionalInputValue<FileContentBufferComputeBeta, Map<String, dynamic>>(pk, (value) => value.toMap()),
    };
  }

  factory InitialStateConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigComputeBeta(
      dbs: map['dbs'] == null ? null : (pulumi.Input.decodeList<FileContentBufferComputeBeta>(map['dbs'], (value) => FileContentBufferComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbxs: map['dbxs'] == null ? null : (pulumi.Input.decodeList<FileContentBufferComputeBeta>(map['dbxs'], (value) => FileContentBufferComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keks: map['keks'] == null ? null : (pulumi.Input.decodeList<FileContentBufferComputeBeta>(map['keks'], (value) => FileContentBufferComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pk: map['pk'] == null ? null : (FileContentBufferComputeBeta.fromMap((map['pk'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

