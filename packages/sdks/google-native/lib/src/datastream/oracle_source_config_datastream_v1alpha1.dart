// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_rdbms_datastream_v1alpha1.dart';

/// Oracle data source configuration
class OracleSourceConfigDatastreamV1alpha1 {
  /// Oracle objects to include in the stream.
  final OracleRdbmsDatastreamV1alpha1? allowlist;
  /// Drop large object values.
  final Map<String, dynamic>? dropLargeObjects;
  /// Oracle objects to exclude from the stream.
  final OracleRdbmsDatastreamV1alpha1? rejectlist;

  /// Creates a new [OracleSourceConfigDatastreamV1alpha1].
  /// [allowlist] Oracle objects to include in the stream.
  /// [dropLargeObjects] Drop large object values.
  /// [rejectlist] Oracle objects to exclude from the stream.
  OracleSourceConfigDatastreamV1alpha1({
    this.allowlist,
    this.dropLargeObjects,
    this.rejectlist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlist': ?allowlist == null ? null : allowlist!.toMap(),
      'dropLargeObjects': ?dropLargeObjects,
      'rejectlist': ?rejectlist == null ? null : rejectlist!.toMap(),
    };
  }

  factory OracleSourceConfigDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleSourceConfigDatastreamV1alpha1(
      allowlist: map['allowlist'] == null ? null : OracleRdbmsDatastreamV1alpha1.fromMap((map['allowlist'] as Map).cast<String, dynamic>()),
      dropLargeObjects: map['dropLargeObjects'] == null ? null : (map['dropLargeObjects'] as Map).cast<String, dynamic>(),
      rejectlist: map['rejectlist'] == null ? null : OracleRdbmsDatastreamV1alpha1.fromMap((map['rejectlist'] as Map).cast<String, dynamic>()),
    );
  }
}

