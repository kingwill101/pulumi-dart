// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_response.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigResponse {
  /// The Key Database (db).
  final pulumi.Input<List<FileContentBufferResponse>> dbs;
  /// The forbidden key database (dbx).
  final pulumi.Input<List<FileContentBufferResponse>> dbxs;
  /// The Key Exchange Key (KEK).
  final pulumi.Input<List<FileContentBufferResponse>> keks;
  /// The Platform Key (PK).
  final pulumi.Input<FileContentBufferResponse> pk;

  /// Creates a new [InitialStateConfigResponse].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  const InitialStateConfigResponse({
    required this.dbs,
    required this.dbxs,
    required this.keks,
    required this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs': pulumi.Input.mapInputValue<List<FileContentBufferResponse>, List<Map<String, dynamic>>>(dbs, (value) => pulumi.Input.encodeList<FileContentBufferResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbxs': pulumi.Input.mapInputValue<List<FileContentBufferResponse>, List<Map<String, dynamic>>>(dbxs, (value) => pulumi.Input.encodeList<FileContentBufferResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keks': pulumi.Input.mapInputValue<List<FileContentBufferResponse>, List<Map<String, dynamic>>>(keks, (value) => pulumi.Input.encodeList<FileContentBufferResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pk': pulumi.Input.mapInputValue<FileContentBufferResponse, Map<String, dynamic>>(pk, (value) => value.toMap()),
    };
  }

  factory InitialStateConfigResponse.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigResponse(
      dbs: pulumi.Input.fromValue(pulumi.Input.decodeList<FileContentBufferResponse>(map['dbs']!, (value) => FileContentBufferResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dbxs: pulumi.Input.fromValue(pulumi.Input.decodeList<FileContentBufferResponse>(map['dbxs']!, (value) => FileContentBufferResponse.fromMap((value as Map).cast<String, dynamic>()))),
      keks: pulumi.Input.fromValue(pulumi.Input.decodeList<FileContentBufferResponse>(map['keks']!, (value) => FileContentBufferResponse.fromMap((value as Map).cast<String, dynamic>()))),
      pk: pulumi.Input.fromValue(FileContentBufferResponse.fromMap((map['pk']! as Map).cast<String, dynamic>())),
    );
  }
}

