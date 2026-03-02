// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_compute_v1.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigComputeV1 {
  /// The Key Database (db).
  final pulumi.Input<List<FileContentBufferComputeV1>>? dbs;
  /// The forbidden key database (dbx).
  final pulumi.Input<List<FileContentBufferComputeV1>>? dbxs;
  /// The Key Exchange Key (KEK).
  final pulumi.Input<List<FileContentBufferComputeV1>>? keks;
  /// The Platform Key (PK).
  final pulumi.Input<FileContentBufferComputeV1>? pk;

  /// Creates a new [InitialStateConfigComputeV1].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  InitialStateConfigComputeV1({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs': ?pulumi.Input.mapOptionalInputValue<List<FileContentBufferComputeV1>, List<Map<String, dynamic>>>(dbs, (value) => pulumi.Input.encodeList<FileContentBufferComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbxs': ?pulumi.Input.mapOptionalInputValue<List<FileContentBufferComputeV1>, List<Map<String, dynamic>>>(dbxs, (value) => pulumi.Input.encodeList<FileContentBufferComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keks': ?pulumi.Input.mapOptionalInputValue<List<FileContentBufferComputeV1>, List<Map<String, dynamic>>>(keks, (value) => pulumi.Input.encodeList<FileContentBufferComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pk': ?pulumi.Input.mapOptionalInputValue<FileContentBufferComputeV1, Map<String, dynamic>>(pk, (value) => value.toMap()),
    };
  }

  factory InitialStateConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigComputeV1(
      dbs: map['dbs'] == null ? null : (pulumi.Input.decodeList<FileContentBufferComputeV1>(map['dbs']!, (value) => FileContentBufferComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbxs: map['dbxs'] == null ? null : (pulumi.Input.decodeList<FileContentBufferComputeV1>(map['dbxs']!, (value) => FileContentBufferComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keks: map['keks'] == null ? null : (pulumi.Input.decodeList<FileContentBufferComputeV1>(map['keks']!, (value) => FileContentBufferComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pk: map['pk'] == null ? null : (FileContentBufferComputeV1.fromMap((map['pk']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

