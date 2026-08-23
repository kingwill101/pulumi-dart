// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_query_response_cloudidentity_v1beta1.dart';
import 'dynamic_group_status_response_cloudidentity_v1beta1.dart';

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadataResponseCloudidentityV1beta1 {
  /// Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  final pulumi.Input<List<DynamicGroupQueryResponseCloudidentityV1beta1>> queries;
  /// Status of the dynamic group.
  final pulumi.Input<DynamicGroupStatusResponseCloudidentityV1beta1> status;

  /// Creates a new [DynamicGroupMetadataResponseCloudidentityV1beta1].
  /// [queries] Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  /// [status] Status of the dynamic group.
  const DynamicGroupMetadataResponseCloudidentityV1beta1({
    required this.queries,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queries': pulumi.Input.mapInputValue<List<DynamicGroupQueryResponseCloudidentityV1beta1>, List<Map<String, dynamic>>>(queries, (value) => pulumi.Input.encodeList<DynamicGroupQueryResponseCloudidentityV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': pulumi.Input.mapInputValue<DynamicGroupStatusResponseCloudidentityV1beta1, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory DynamicGroupMetadataResponseCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return DynamicGroupMetadataResponseCloudidentityV1beta1(
      queries: pulumi.Input.fromValue(pulumi.Input.decodeList<DynamicGroupQueryResponseCloudidentityV1beta1>(map['queries']!, (value) => DynamicGroupQueryResponseCloudidentityV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(DynamicGroupStatusResponseCloudidentityV1beta1.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}
