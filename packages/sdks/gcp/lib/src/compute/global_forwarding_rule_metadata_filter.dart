// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_forwarding_rule_metadata_filter_filter_label.dart';

class GlobalForwardingRuleMetadataFilter {
  /// The list of label value pairs that must match labels in the
  /// provided metadata based on filterMatchCriteria
  /// This list must not be empty and can have at the most 64 entries.
  /// Structure is documented below.
  final pulumi.Input<List<GlobalForwardingRuleMetadataFilterFilterLabel>> filterLabels;
  /// Specifies how individual filterLabel matches within the list of
  /// filterLabels contribute towards the overall metadataFilter match.
  /// MATCH_ANY - At least one of the filterLabels must have a matching
  /// label in the provided metadata.
  /// MATCH_ALL - All filterLabels must have matching labels in the
  /// provided metadata.
  /// Possible values are: `MATCH_ANY`, `MATCH_ALL`.
  final pulumi.Input<String> filterMatchCriteria;

  /// Creates a new [GlobalForwardingRuleMetadataFilter].
  /// [filterLabels] The list of label value pairs that must match labels in the
  /// [filterMatchCriteria] Specifies how individual filterLabel matches within the list of
  GlobalForwardingRuleMetadataFilter({
    required this.filterLabels,
    required this.filterMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterLabels': pulumi.Input.mapInputValue<List<GlobalForwardingRuleMetadataFilterFilterLabel>, List<Map<String, dynamic>>>(filterLabels, (value) => pulumi.Input.encodeList<GlobalForwardingRuleMetadataFilterFilterLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filterMatchCriteria': filterMatchCriteria,
    };
  }

  factory GlobalForwardingRuleMetadataFilter.fromMap(Map<String, dynamic> map) {
    return GlobalForwardingRuleMetadataFilter(
      filterLabels: pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalForwardingRuleMetadataFilterFilterLabel>(map['filterLabels']!, (value) => GlobalForwardingRuleMetadataFilterFilterLabel.fromMap((value as Map).cast<String, dynamic>()))),
      filterMatchCriteria: pulumi.Input.fromValue(map['filterMatchCriteria'] as String),
    );
  }
}

