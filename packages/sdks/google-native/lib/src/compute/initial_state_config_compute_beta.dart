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
  InitialStateConfigComputeBeta({this.dbs, this.dbxs, this.keks, this.pk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs':
          ?pulumi.Input.mapOptionalInputValue<
            List<FileContentBufferComputeBeta>,
            List<Map<String, dynamic>>
          >(
            dbs,
            (value) =>
                pulumi.Input.encodeList<
                  FileContentBufferComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dbxs':
          ?pulumi.Input.mapOptionalInputValue<
            List<FileContentBufferComputeBeta>,
            List<Map<String, dynamic>>
          >(
            dbxs,
            (value) =>
                pulumi.Input.encodeList<
                  FileContentBufferComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'keks':
          ?pulumi.Input.mapOptionalInputValue<
            List<FileContentBufferComputeBeta>,
            List<Map<String, dynamic>>
          >(
            keks,
            (value) =>
                pulumi.Input.encodeList<
                  FileContentBufferComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pk':
          ?pulumi.Input.mapOptionalInputValue<
            FileContentBufferComputeBeta,
            Map<String, dynamic>
          >(pk, (value) => value.toMap()),
    };
  }

  factory InitialStateConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return InitialStateConfigComputeBeta(
      dbs: (() {
        final guardedValue = map['dbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FileContentBufferComputeBeta>(
            guardedValue,
            (value) => FileContentBufferComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dbxs: (() {
        final guardedValue = map['dbxs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FileContentBufferComputeBeta>(
            guardedValue,
            (value) => FileContentBufferComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      keks: (() {
        final guardedValue = map['keks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FileContentBufferComputeBeta>(
            guardedValue,
            (value) => FileContentBufferComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      pk: (() {
        final guardedValue = map['pk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileContentBufferComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
