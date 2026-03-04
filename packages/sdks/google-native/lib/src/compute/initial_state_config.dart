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
  InitialStateConfig({this.dbs, this.dbxs, this.keks, this.pk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs':
          ?pulumi.Input.mapOptionalInputValue<
            List<FileContentBuffer>,
            List<Map<String, dynamic>>
          >(
            dbs,
            (value) =>
                pulumi.Input.encodeList<
                  FileContentBuffer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dbxs':
          ?pulumi.Input.mapOptionalInputValue<
            List<FileContentBuffer>,
            List<Map<String, dynamic>>
          >(
            dbxs,
            (value) =>
                pulumi.Input.encodeList<
                  FileContentBuffer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'keks':
          ?pulumi.Input.mapOptionalInputValue<
            List<FileContentBuffer>,
            List<Map<String, dynamic>>
          >(
            keks,
            (value) =>
                pulumi.Input.encodeList<
                  FileContentBuffer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pk':
          ?pulumi.Input.mapOptionalInputValue<
            FileContentBuffer,
            Map<String, dynamic>
          >(pk, (value) => value.toMap()),
    };
  }

  factory InitialStateConfig.fromMap(Map<String, dynamic> map) {
    return InitialStateConfig(
      dbs: (() {
        final guardedValue = map['dbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FileContentBuffer>(
            guardedValue,
            (value) => FileContentBuffer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dbxs: (() {
        final guardedValue = map['dbxs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FileContentBuffer>(
            guardedValue,
            (value) => FileContentBuffer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      keks: (() {
        final guardedValue = map['keks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FileContentBuffer>(
            guardedValue,
            (value) => FileContentBuffer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      pk: (() {
        final guardedValue = map['pk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileContentBuffer.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
