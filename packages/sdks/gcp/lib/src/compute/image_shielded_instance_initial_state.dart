// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_shielded_instance_initial_state_db.dart';
import 'image_shielded_instance_initial_state_dbx.dart';
import 'image_shielded_instance_initial_state_kek.dart';
import 'image_shielded_instance_initial_state_pk.dart';

class ImageShieldedInstanceInitialState {
  /// The Key Database (db).
  /// Structure is documented below.
  final pulumi.Input<List<ImageShieldedInstanceInitialStateDb>>? dbs;
  /// The forbidden key database (dbx).
  /// Structure is documented below.
  final pulumi.Input<List<ImageShieldedInstanceInitialStateDbx>>? dbxs;
  /// The Key Exchange Key (KEK).
  /// Structure is documented below.
  final pulumi.Input<List<ImageShieldedInstanceInitialStateKek>>? keks;
  /// The Platform Key (PK).
  /// Structure is documented below.
  final pulumi.Input<ImageShieldedInstanceInitialStatePk>? pk;

  /// Creates a new [ImageShieldedInstanceInitialState].
  /// [dbs] The Key Database (db).
  /// [dbxs] The forbidden key database (dbx).
  /// [keks] The Key Exchange Key (KEK).
  /// [pk] The Platform Key (PK).
  ImageShieldedInstanceInitialState({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbs': ?pulumi.Input.mapOptionalInputValue<List<ImageShieldedInstanceInitialStateDb>, List<Map<String, dynamic>>>(dbs, (value) => pulumi.Input.encodeList<ImageShieldedInstanceInitialStateDb, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbxs': ?pulumi.Input.mapOptionalInputValue<List<ImageShieldedInstanceInitialStateDbx>, List<Map<String, dynamic>>>(dbxs, (value) => pulumi.Input.encodeList<ImageShieldedInstanceInitialStateDbx, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keks': ?pulumi.Input.mapOptionalInputValue<List<ImageShieldedInstanceInitialStateKek>, List<Map<String, dynamic>>>(keks, (value) => pulumi.Input.encodeList<ImageShieldedInstanceInitialStateKek, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pk': ?pulumi.Input.mapOptionalInputValue<ImageShieldedInstanceInitialStatePk, Map<String, dynamic>>(pk, (value) => value.toMap()),
    };
  }

  factory ImageShieldedInstanceInitialState.fromMap(Map<String, dynamic> map) {
    return ImageShieldedInstanceInitialState(
      dbs: map['dbs'] == null ? null : (pulumi.Input.decodeList<ImageShieldedInstanceInitialStateDb>(map['dbs']!, (value) => ImageShieldedInstanceInitialStateDb.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbxs: map['dbxs'] == null ? null : (pulumi.Input.decodeList<ImageShieldedInstanceInitialStateDbx>(map['dbxs']!, (value) => ImageShieldedInstanceInitialStateDbx.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keks: map['keks'] == null ? null : (pulumi.Input.decodeList<ImageShieldedInstanceInitialStateKek>(map['keks']!, (value) => ImageShieldedInstanceInitialStateKek.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pk: map['pk'] == null ? null : (ImageShieldedInstanceInitialStatePk.fromMap((map['pk']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

