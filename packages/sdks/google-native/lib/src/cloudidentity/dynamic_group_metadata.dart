// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_query.dart';

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadata {
  /// Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  final pulumi.Input<List<DynamicGroupQuery>>? queries;

  /// Creates a new [DynamicGroupMetadata].
  /// [queries] Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  DynamicGroupMetadata({this.queries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queries':
          ?pulumi.Input.mapOptionalInputValue<
            List<DynamicGroupQuery>,
            List<Map<String, dynamic>>
          >(
            queries,
            (value) =>
                pulumi.Input.encodeList<
                  DynamicGroupQuery,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DynamicGroupMetadata.fromMap(Map<String, dynamic> map) {
    return DynamicGroupMetadata(
      queries: (() {
        final guardedValue = map['queries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DynamicGroupQuery>(
            guardedValue,
            (value) => DynamicGroupQuery.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
