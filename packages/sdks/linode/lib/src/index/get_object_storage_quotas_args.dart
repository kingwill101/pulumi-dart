// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_object_storage_quotas_filter.dart';

/// {@template pulumi_index_get_object_storage_quotas_get_object_storage_quotas_args_doc}
/// Arguments for getObjectStorageQuotas.
/// {@endtemplate}
/// {@macro pulumi_index_get_object_storage_quotas_get_object_storage_quotas_args_doc}
class GetObjectStorageQuotasArgs {
  final pulumi.Input<List<GetObjectStorageQuotasFilter>>? filters;

  /// Creates a new [GetObjectStorageQuotasArgs].
  /// [filters] Optional.
  GetObjectStorageQuotasArgs({
    pulumi.Output<List<GetObjectStorageQuotasFilter>>? filters,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetObjectStorageQuotasFilter>>(filters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetObjectStorageQuotasFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetObjectStorageQuotasFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetObjectStorageQuotasArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageQuotasArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetObjectStorageQuotasFilter>>(pulumi.Input.decodeList<GetObjectStorageQuotasFilter>(map['filters'], (value) => GetObjectStorageQuotasFilter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

