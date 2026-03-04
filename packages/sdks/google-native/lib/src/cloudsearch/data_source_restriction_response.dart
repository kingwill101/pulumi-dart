// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_options_response.dart';
import 'source_response.dart';

/// Restriction on Datasource.
class DataSourceRestrictionResponse {
  /// Filter options restricting the results. If multiple filters are present, they are grouped by object type before joining. Filters with the same object type are joined conjunctively, then the resulting expressions are joined disjunctively. The maximum number of elements is 20. NOTE: Suggest API supports only few filters at the moment: "objecttype", "type" and "mimetype". For now, schema specific filters cannot be used to filter suggestions.
  final pulumi.Input<List<FilterOptionsResponse>> filterOptions;

  /// The source of restriction.
  final pulumi.Input<SourceResponse> source;

  /// Creates a new [DataSourceRestrictionResponse].
  /// [filterOptions] Filter options restricting the results. If multiple filters are present, they are grouped by object type before joining. Filters with the same object type are joined conjunctively, then the resulting expressions are joined disjunctively. The maximum number of elements is 20. NOTE: Suggest API supports only few filters at the moment: "objecttype", "type" and "mimetype". For now, schema specific filters cannot be used to filter suggestions.
  /// [source] The source of restriction.
  DataSourceRestrictionResponse({
    required this.filterOptions,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterOptions':
          pulumi.Input.mapInputValue<
            List<FilterOptionsResponse>,
            List<Map<String, dynamic>>
          >(
            filterOptions,
            (value) =>
                pulumi.Input.encodeList<
                  FilterOptionsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'source':
          pulumi.Input.mapInputValue<SourceResponse, Map<String, dynamic>>(
            source,
            (value) => value.toMap(),
          ),
    };
  }

  factory DataSourceRestrictionResponse.fromMap(Map<String, dynamic> map) {
    return DataSourceRestrictionResponse(
      filterOptions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<FilterOptionsResponse>(
          map['filterOptions']!,
          (value) => FilterOptionsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      source: pulumi.Input.fromValue(
        SourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
