// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_query_cloudidentity_v1beta1.dart';

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadataCloudidentityV1beta1 {
  /// Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  final pulumi.Input<List<DynamicGroupQueryCloudidentityV1beta1>>? queries;

  /// Creates a new [DynamicGroupMetadataCloudidentityV1beta1].
  /// [queries] Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  const DynamicGroupMetadataCloudidentityV1beta1({
    this.queries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queries': ?pulumi.Input.mapOptionalInputValue<List<DynamicGroupQueryCloudidentityV1beta1>, List<Map<String, dynamic>>>(queries, (value) => pulumi.Input.encodeList<DynamicGroupQueryCloudidentityV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DynamicGroupMetadataCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return DynamicGroupMetadataCloudidentityV1beta1(
      queries: (() { final guardedValue = map['queries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DynamicGroupQueryCloudidentityV1beta1>(guardedValue, (value) => DynamicGroupQueryCloudidentityV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
