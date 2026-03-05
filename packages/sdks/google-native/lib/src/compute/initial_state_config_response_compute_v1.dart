// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_response_compute_v1.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigResponseComputeV1 {
  /// The Key Database (db).
  final pulumi.Input<List<FileContentBufferResponseComputeV1>> dbs;
  /// The forbidden key database (dbx).
  final pulumi.Input<List<FileContentBufferResponseComputeV1>> dbxs;
  /// The Key Exchange Key (KEK).
  final pulumi.Input<List<FileContentBufferResponseComputeV1>> keks;
  /// The Platform Key (PK).
  final pulumi.Input<FileContentBufferResponseComputeV1> pk;

  /// Creates a new [InitialStateConfigResponseComputeV1].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  InitialStateConfigResponseComputeV1({
    required this.dbs,
    required this.dbxs,
    required this.keks,
    required this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs': pulumi.Input.mapInputValue<List<FileContentBufferResponseComputeV1>, List<Map<String, dynamic>>>(dbs, (value) => pulumi.Input.encodeList<FileContentBufferResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbxs': pulumi.Input.mapInputValue<List<FileContentBufferResponseComputeV1>, List<Map<String, dynamic>>>(dbxs, (value) => pulumi.Input.encodeList<FileContentBufferResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keks': pulumi.Input.mapInputValue<List<FileContentBufferResponseComputeV1>, List<Map<String, dynamic>>>(keks, (value) => pulumi.Input.encodeList<FileContentBufferResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pk': pulumi.Input.mapInputValue<FileContentBufferResponseComputeV1, Map<String, dynamic>>(pk, (value) => value.toMap()),
    };
  }

  factory InitialStateConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigResponseComputeV1(
      dbs: pulumi.Input.fromValue(pulumi.Input.decodeList<FileContentBufferResponseComputeV1>(map['dbs']!, (value) => FileContentBufferResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      dbxs: pulumi.Input.fromValue(pulumi.Input.decodeList<FileContentBufferResponseComputeV1>(map['dbxs']!, (value) => FileContentBufferResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      keks: pulumi.Input.fromValue(pulumi.Input.decodeList<FileContentBufferResponseComputeV1>(map['keks']!, (value) => FileContentBufferResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      pk: pulumi.Input.fromValue(FileContentBufferResponseComputeV1.fromMap((map['pk']! as Map).cast<String, dynamic>())),
    );
  }
}

