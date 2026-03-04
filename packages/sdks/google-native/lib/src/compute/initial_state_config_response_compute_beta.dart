// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_content_buffer_response_compute_beta.dart';

/// Initial State for shielded instance, these are public keys which are safe to store in public
class InitialStateConfigResponseComputeBeta {
  /// The Key Database (db).
  final pulumi.Input<List<FileContentBufferResponseComputeBeta>> dbs;

  /// The forbidden key database (dbx).
  final pulumi.Input<List<FileContentBufferResponseComputeBeta>> dbxs;

  /// The Key Exchange Key (KEK).
  final pulumi.Input<List<FileContentBufferResponseComputeBeta>> keks;

  /// The Platform Key (PK).
  final pulumi.Input<FileContentBufferResponseComputeBeta> pk;

  /// Creates a new [InitialStateConfigResponseComputeBeta].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  InitialStateConfigResponseComputeBeta({
    required this.dbs,
    required this.dbxs,
    required this.keks,
    required this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs':
          pulumi.Input.mapInputValue<
            List<FileContentBufferResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            dbs,
            (value) =>
                pulumi.Input.encodeList<
                  FileContentBufferResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dbxs':
          pulumi.Input.mapInputValue<
            List<FileContentBufferResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            dbxs,
            (value) =>
                pulumi.Input.encodeList<
                  FileContentBufferResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'keks':
          pulumi.Input.mapInputValue<
            List<FileContentBufferResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            keks,
            (value) =>
                pulumi.Input.encodeList<
                  FileContentBufferResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pk':
          pulumi.Input.mapInputValue<
            FileContentBufferResponseComputeBeta,
            Map<String, dynamic>
          >(pk, (value) => value.toMap()),
    };
  }

  factory InitialStateConfigResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InitialStateConfigResponseComputeBeta(
      dbs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<FileContentBufferResponseComputeBeta>(
          map['dbs']!,
          (value) => FileContentBufferResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      dbxs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<FileContentBufferResponseComputeBeta>(
          map['dbxs']!,
          (value) => FileContentBufferResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      keks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<FileContentBufferResponseComputeBeta>(
          map['keks']!,
          (value) => FileContentBufferResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      pk: pulumi.Input.fromValue(
        FileContentBufferResponseComputeBeta.fromMap(
          (map['pk']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
