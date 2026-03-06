// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_rdbms_response_datastream_v1alpha1.dart';

/// MySQL source configuration
class MysqlSourceConfigResponseDatastreamV1alpha1 {
  /// MySQL objects to retrieve from the source.
  final pulumi.Input<MysqlRdbmsResponseDatastreamV1alpha1> allowlist;
  /// MySQL objects to exclude from the stream.
  final pulumi.Input<MysqlRdbmsResponseDatastreamV1alpha1> rejectlist;

  /// Creates a new [MysqlSourceConfigResponseDatastreamV1alpha1].
  /// [allowlist] MySQL objects to retrieve from the source.
  /// [rejectlist] MySQL objects to exclude from the stream.
  const MysqlSourceConfigResponseDatastreamV1alpha1({
    required this.allowlist,
    required this.rejectlist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlist': pulumi.Input.mapInputValue<MysqlRdbmsResponseDatastreamV1alpha1, Map<String, dynamic>>(allowlist, (value) => value.toMap()),
      'rejectlist': pulumi.Input.mapInputValue<MysqlRdbmsResponseDatastreamV1alpha1, Map<String, dynamic>>(rejectlist, (value) => value.toMap()),
    };
  }

  factory MysqlSourceConfigResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlSourceConfigResponseDatastreamV1alpha1(
      allowlist: pulumi.Input.fromValue(MysqlRdbmsResponseDatastreamV1alpha1.fromMap((map['allowlist']! as Map).cast<String, dynamic>())),
      rejectlist: pulumi.Input.fromValue(MysqlRdbmsResponseDatastreamV1alpha1.fromMap((map['rejectlist']! as Map).cast<String, dynamic>())),
    );
  }
}

