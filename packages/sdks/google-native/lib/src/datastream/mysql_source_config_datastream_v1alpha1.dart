// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_rdbms_datastream_v1alpha1.dart';

/// MySQL source configuration
class MysqlSourceConfigDatastreamV1alpha1 {
  /// MySQL objects to retrieve from the source.
  final pulumi.Input<MysqlRdbmsDatastreamV1alpha1>? allowlist;
  /// MySQL objects to exclude from the stream.
  final pulumi.Input<MysqlRdbmsDatastreamV1alpha1>? rejectlist;

  /// Creates a new [MysqlSourceConfigDatastreamV1alpha1].
  /// [allowlist] MySQL objects to retrieve from the source.
  /// [rejectlist] MySQL objects to exclude from the stream.
  const MysqlSourceConfigDatastreamV1alpha1({
    this.allowlist,
    this.rejectlist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlist': ?pulumi.Input.mapOptionalInputValue<MysqlRdbmsDatastreamV1alpha1, Map<String, dynamic>>(allowlist, (value) => value.toMap()),
      'rejectlist': ?pulumi.Input.mapOptionalInputValue<MysqlRdbmsDatastreamV1alpha1, Map<String, dynamic>>(rejectlist, (value) => value.toMap()),
    };
  }

  factory MysqlSourceConfigDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlSourceConfigDatastreamV1alpha1(
      allowlist: (() { final guardedValue = map['allowlist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MysqlRdbmsDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rejectlist: (() { final guardedValue = map['rejectlist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MysqlRdbmsDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

