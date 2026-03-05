// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_kind_expression_response.dart';
import 'google_privacy_dlp_v2_partition_id_response.dart';

/// Options defining a data set within Google Cloud Datastore.
class GooglePrivacyDlpV2DatastoreOptionsResponse {
  /// The kind to process.
  final pulumi.Input<GooglePrivacyDlpV2KindExpressionResponse> kind;
  /// A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty.
  final pulumi.Input<GooglePrivacyDlpV2PartitionIdResponse> partitionId;

  /// Creates a new [GooglePrivacyDlpV2DatastoreOptionsResponse].
  /// [kind] The kind to process.
  /// [partitionId] A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty.
  GooglePrivacyDlpV2DatastoreOptionsResponse({
    required this.kind,
    required this.partitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': pulumi.Input.mapInputValue<GooglePrivacyDlpV2KindExpressionResponse, Map<String, dynamic>>(kind, (value) => value.toMap()),
      'partitionId': pulumi.Input.mapInputValue<GooglePrivacyDlpV2PartitionIdResponse, Map<String, dynamic>>(partitionId, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DatastoreOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DatastoreOptionsResponse(
      kind: pulumi.Input.fromValue(GooglePrivacyDlpV2KindExpressionResponse.fromMap((map['kind']! as Map).cast<String, dynamic>())),
      partitionId: pulumi.Input.fromValue(GooglePrivacyDlpV2PartitionIdResponse.fromMap((map['partitionId']! as Map).cast<String, dynamic>())),
    );
  }
}

