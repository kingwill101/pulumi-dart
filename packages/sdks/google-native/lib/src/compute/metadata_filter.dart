// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_filter_filter_match_criteria.dart';
import 'metadata_filter_label_match.dart';

/// Opaque filter criteria used by load balancers to restrict routing configuration to a limited set of load balancing proxies. Proxies and sidecars involved in load balancing would typically present metadata to the load balancers that need to match criteria specified here. If a match takes place, the relevant configuration is made available to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. An example for using metadataFilters would be: if load balancing involves Envoys, they receive routing configuration when values in metadataFilters match values supplied in of their XDS requests to loadbalancers.
class MetadataFilter {
  /// The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list must not be empty and can have at the most 64 entries.
  final pulumi.Input<List<MetadataFilterLabelMatch>>? filterLabels;
  /// Specifies how individual filter label matches within the list of filterLabels and contributes toward the overall metadataFilter match. Supported values are: - MATCH_ANY: at least one of the filterLabels must have a matching label in the provided metadata. - MATCH_ALL: all filterLabels must have matching labels in the provided metadata.
  final pulumi.Input<MetadataFilterFilterMatchCriteria>? filterMatchCriteria;

  /// Creates a new [MetadataFilter].
  /// [filterLabels] The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list must not be empty and can have at the most 64 entries.
  /// [filterMatchCriteria] Specifies how individual filter label matches within the list of filterLabels and contributes toward the overall metadataFilter match. Supported values are: - MATCH_ANY: at least one of the filterLabels must have a matching label in the provided metadata. - MATCH_ALL: all filterLabels must have matching labels in the provided metadata.
  MetadataFilter({
    this.filterLabels,
    this.filterMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterLabels': ?pulumi.Input.mapOptionalInputValue<List<MetadataFilterLabelMatch>, List<Map<String, dynamic>>>(filterLabels, (value) => pulumi.Input.encodeList<MetadataFilterLabelMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filterMatchCriteria': ?pulumi.Input.mapOptionalInputValue<MetadataFilterFilterMatchCriteria, String>(filterMatchCriteria, (value) => value.wireValue),
    };
  }

  factory MetadataFilter.fromMap(Map<String, dynamic> map) {
    return MetadataFilter(
      filterLabels: (() { final guardedValue = map['filterLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetadataFilterLabelMatch>(guardedValue, (value) => MetadataFilterLabelMatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filterMatchCriteria: (() { final guardedValue = map['filterMatchCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataFilterFilterMatchCriteria.fromValue(guardedValue as String)); })(),
    );
  }
}

