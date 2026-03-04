// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_route_rule_match_rule_metadata_filter_filter_label.dart';

class URLMapPathMatcherRouteRuleMatchRuleMetadataFilter {
  /// The list of label value pairs that must match labels in the provided metadata
  /// based on filterMatchCriteria  This list must not be empty and can have at the
  /// most 64 entries.
  /// Structure is documented below.
  final pulumi.Input<
    List<URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel>
  >
  filterLabels;

  /// Specifies how individual filterLabel matches within the list of filterLabels
  /// contribute towards the overall metadataFilter match. Supported values are:
  /// - MATCH_ANY: At least one of the filterLabels must have a matching label in the
  /// provided metadata.
  /// - MATCH_ALL: All filterLabels must have matching labels in
  /// the provided metadata.
  /// Possible values are: `MATCH_ALL`, `MATCH_ANY`.
  final pulumi.Input<String> filterMatchCriteria;

  /// Creates a new [URLMapPathMatcherRouteRuleMatchRuleMetadataFilter].
  /// [filterLabels] The list of label value pairs that must match labels in the provided metadata
  /// [filterMatchCriteria] Specifies how individual filterLabel matches within the list of filterLabels
  URLMapPathMatcherRouteRuleMatchRuleMetadataFilter({
    required this.filterLabels,
    required this.filterMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterLabels':
          pulumi.Input.mapInputValue<
            List<URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel>,
            List<Map<String, dynamic>>
          >(
            filterLabels,
            (value) =>
                pulumi.Input.encodeList<
                  URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'filterMatchCriteria': filterMatchCriteria,
    };
  }

  factory URLMapPathMatcherRouteRuleMatchRuleMetadataFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherRouteRuleMatchRuleMetadataFilter(
      filterLabels: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel
        >(
          map['filterLabels']!,
          (value) =>
              URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabel.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      filterMatchCriteria: pulumi.Input.fromValue(
        map['filterMatchCriteria'] as String,
      ),
    );
  }
}
