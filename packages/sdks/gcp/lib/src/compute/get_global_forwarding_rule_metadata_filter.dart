// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_forwarding_rule_metadata_filter_filter_label.dart';

class GetGlobalForwardingRuleMetadataFilter {
  /// The list of label value pairs that must match labels in the
  /// provided metadata based on filterMatchCriteria
  ///
  /// This list must not be empty and can have at the most 64 entries.
  final pulumi.Input<List<GetGlobalForwardingRuleMetadataFilterFilterLabel>> filterLabels;
  /// Specifies how individual filterLabel matches within the list of
  /// filterLabels contribute towards the overall metadataFilter match.
  ///
  /// MATCH_ANY - At least one of the filterLabels must have a matching
  /// label in the provided metadata.
  /// MATCH_ALL - All filterLabels must have matching labels in the
  /// provided metadata. Possible values: ["MATCH_ANY", "MATCH_ALL"]
  final pulumi.Input<String> filterMatchCriteria;

  /// Creates a new [GetGlobalForwardingRuleMetadataFilter].
  /// [filterLabels] The list of label value pairs that must match labels in the
  /// [filterMatchCriteria] Specifies how individual filterLabel matches within the list of
  const GetGlobalForwardingRuleMetadataFilter({
    required this.filterLabels,
    required this.filterMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterLabels': pulumi.Input.mapInputValue<List<GetGlobalForwardingRuleMetadataFilterFilterLabel>, List<Map<String, dynamic>>>(filterLabels, (value) => pulumi.Input.encodeList<GetGlobalForwardingRuleMetadataFilterFilterLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filterMatchCriteria': filterMatchCriteria,
    };
  }

  factory GetGlobalForwardingRuleMetadataFilter.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleMetadataFilter(
      filterLabels: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGlobalForwardingRuleMetadataFilterFilterLabel>(map['filterLabels']!, (value) => GetGlobalForwardingRuleMetadataFilterFilterLabel.fromMap((value as Map).cast<String, dynamic>()))),
      filterMatchCriteria: pulumi.Input.fromValue(map['filterMatchCriteria'] as String),
    );
  }
}
