// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_custom_origin_trust_stores_get_custom_origin_trust_stores_args_doc}
/// Arguments for getCustomOriginTrustStores.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_origin_trust_stores_get_custom_origin_trust_stores_args_doc}
class GetCustomOriginTrustStoresArgs {
  /// Limit to the number of records returned.
  final pulumi.Input<int?>? limit;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Offset the results.
  final pulumi.Input<int?>? offset;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomOriginTrustStoresArgs].
  /// [limit] Limit to the number of records returned.
  /// [maxItems] Max items to fetch, default: 1000
  /// [offset] Offset the results.
  /// [zoneId] Identifier.
  const GetCustomOriginTrustStoresArgs({
    this.limit,
    this.maxItems,
    this.offset,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'maxItems': ?maxItems,
      'offset': ?offset,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomOriginTrustStoresArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomOriginTrustStoresArgs(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
