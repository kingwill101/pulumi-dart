// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_origin_trust_store_filter.dart';

/// {@template pulumi_index_get_custom_origin_trust_store_get_custom_origin_trust_store_args_doc}
/// Arguments for getCustomOriginTrustStore.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_origin_trust_store_get_custom_origin_trust_store_args_doc}
class GetCustomOriginTrustStoreArgs {
  /// Identifier.
  final pulumi.Input<String?>? customOriginTrustStoreId;
  final pulumi.Input<GetCustomOriginTrustStoreFilter?>? filter;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomOriginTrustStoreArgs].
  /// [customOriginTrustStoreId] Identifier.
  /// [filter] Optional.
  /// [zoneId] Identifier.
  const GetCustomOriginTrustStoreArgs({
    this.customOriginTrustStoreId,
    this.filter,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customOriginTrustStoreId': ?customOriginTrustStoreId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetCustomOriginTrustStoreFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomOriginTrustStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomOriginTrustStoreArgs(
      customOriginTrustStoreId: (() { final guardedValue = map['customOriginTrustStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetCustomOriginTrustStoreFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
