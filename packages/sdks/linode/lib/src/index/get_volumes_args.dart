// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volumes_filter.dart';

/// {@template pulumi_index_get_volumes_get_volumes_args_doc}
/// Arguments for getVolumes.
/// {@endtemplate}
/// {@macro pulumi_index_get_volumes_get_volumes_args_doc}
class GetVolumesArgs {
  final pulumi.Input<List<GetVolumesFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetVolumesArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetVolumesArgs({
    pulumi.Output<List<GetVolumesFilter>>? filters,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetVolumesFilter>>(filters),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVolumesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVolumesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetVolumesArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumesArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetVolumesFilter>>(pulumi.Input.decodeList<GetVolumesFilter>(map['filters'], (value) => GetVolumesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
    );
  }
}

