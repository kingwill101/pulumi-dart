// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_options.dart';
import 'source.dart';

/// Restriction on Datasource.
class DataSourceRestriction {
  /// Filter options restricting the results. If multiple filters are present, they are grouped by object type before joining. Filters with the same object type are joined conjunctively, then the resulting expressions are joined disjunctively. The maximum number of elements is 20. NOTE: Suggest API supports only few filters at the moment: "objecttype", "type" and "mimetype". For now, schema specific filters cannot be used to filter suggestions.
  final pulumi.Input<List<FilterOptions>>? filterOptions;
  /// The source of restriction.
  final pulumi.Input<Source>? source;

  /// Creates a new [DataSourceRestriction].
  /// [filterOptions] Filter options restricting the results. If multiple filters are present, they are grouped by object type before joining. Filters with the same object type are joined conjunctively, then the resulting expressions are joined disjunctively. The maximum number of elements is 20. NOTE: Suggest API supports only few filters at the moment: "objecttype", "type" and "mimetype". For now, schema specific filters cannot be used to filter suggestions.
  /// [source] The source of restriction.
  const DataSourceRestriction({
    this.filterOptions,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterOptions': ?pulumi.Input.mapOptionalInputValue<List<FilterOptions>, List<Map<String, dynamic>>>(filterOptions, (value) => pulumi.Input.encodeList<FilterOptions, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': ?pulumi.Input.mapOptionalInputValue<Source, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DataSourceRestriction.fromMap(Map<String, dynamic> map) {
    return DataSourceRestriction(
      filterOptions: (() { final guardedValue = map['filterOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterOptions>(guardedValue, (value) => FilterOptions.fromMap((value as Map).cast<String, dynamic>()))); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Source.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
