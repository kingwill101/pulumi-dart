// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_rdbms_datastream_v1alpha1.dart';

/// Oracle data source configuration
class OracleSourceConfigDatastreamV1alpha1 {
  /// Oracle objects to include in the stream.
  final pulumi.Input<OracleRdbmsDatastreamV1alpha1>? allowlist;

  /// Drop large object values.
  final pulumi.Input<Map<String, dynamic>>? dropLargeObjects;

  /// Oracle objects to exclude from the stream.
  final pulumi.Input<OracleRdbmsDatastreamV1alpha1>? rejectlist;

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
      'allowlist':
          ?pulumi.Input.mapOptionalInputValue<
            OracleRdbmsDatastreamV1alpha1,
            Map<String, dynamic>
          >(allowlist, (value) => value.toMap()),
      'dropLargeObjects': ?dropLargeObjects,
      'rejectlist':
          ?pulumi.Input.mapOptionalInputValue<
            OracleRdbmsDatastreamV1alpha1,
            Map<String, dynamic>
          >(rejectlist, (value) => value.toMap()),
    };
  }

  factory OracleSourceConfigDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return OracleSourceConfigDatastreamV1alpha1(
      allowlist: (() {
        final guardedValue = map['allowlist'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OracleRdbmsDatastreamV1alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dropLargeObjects: (() {
        final guardedValue = map['dropLargeObjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      rejectlist: (() {
        final guardedValue = map['rejectlist'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OracleRdbmsDatastreamV1alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
