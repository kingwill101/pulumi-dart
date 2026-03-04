// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_kind_expression.dart';
import 'google_privacy_dlp_v2_partition_id.dart';

/// Options defining a data set within Google Cloud Datastore.
class GooglePrivacyDlpV2DatastoreOptions {
  /// The kind to process.
  final pulumi.Input<GooglePrivacyDlpV2KindExpression>? kind;

  /// A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty.
  final pulumi.Input<GooglePrivacyDlpV2PartitionId>? partitionId;

  /// Creates a new [GooglePrivacyDlpV2DatastoreOptions].
  /// [kind] The kind to process.
  /// [partitionId] A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty.
  GooglePrivacyDlpV2DatastoreOptions({this.kind, this.partitionId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2KindExpression,
            Map<String, dynamic>
          >(kind, (value) => value.toMap()),
      'partitionId':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2PartitionId,
            Map<String, dynamic>
          >(partitionId, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DatastoreOptions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DatastoreOptions(
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2KindExpression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      partitionId: (() {
        final guardedValue = map['partitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2PartitionId.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
