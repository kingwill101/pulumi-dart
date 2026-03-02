// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_filter_filter_match_criteria_compute_v1.dart';
import 'metadata_filter_label_match_compute_v1.dart';

/// Opaque filter criteria used by load balancers to restrict routing configuration to a limited set of load balancing proxies. Proxies and sidecars involved in load balancing would typically present metadata to the load balancers that need to match criteria specified here. If a match takes place, the relevant configuration is made available to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. An example for using metadataFilters would be: if load balancing involves Envoys, they receive routing configuration when values in metadataFilters match values supplied in of their XDS requests to loadbalancers.
class MetadataFilterComputeV1 {
  /// The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list must not be empty and can have at the most 64 entries.
  final pulumi.Input<List<MetadataFilterLabelMatchComputeV1>>? filterLabels;
  /// Specifies how individual filter label matches within the list of filterLabels and contributes toward the overall metadataFilter match. Supported values are: - MATCH_ANY: at least one of the filterLabels must have a matching label in the provided metadata. - MATCH_ALL: all filterLabels must have matching labels in the provided metadata.
  final pulumi.Input<MetadataFilterFilterMatchCriteriaComputeV1>? filterMatchCriteria;

  /// Creates a new [MetadataFilterComputeV1].
  /// [filterLabels] The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list must not be empty and can have at the most 64 entries.
  /// [filterMatchCriteria] Specifies how individual filter label matches within the list of filterLabels and contributes toward the overall metadataFilter match. Supported values are: - MATCH_ANY: at least one of the filterLabels must have a matching label in the provided metadata. - MATCH_ALL: all filterLabels must have matching labels in the provided metadata.
  MetadataFilterComputeV1({
    this.filterLabels,
    this.filterMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterLabels': ?pulumi.Input.mapOptionalInputValue<List<MetadataFilterLabelMatchComputeV1>, List<Map<String, dynamic>>>(filterLabels, (value) => pulumi.Input.encodeList<MetadataFilterLabelMatchComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filterMatchCriteria': ?pulumi.Input.mapOptionalInputValue<MetadataFilterFilterMatchCriteriaComputeV1, String>(filterMatchCriteria, (value) => value.value),
    };
  }

  factory MetadataFilterComputeV1.fromMap(Map<String, dynamic> map) {
    return MetadataFilterComputeV1(
      filterLabels: map['filterLabels'] == null ? null : (pulumi.Input.decodeList<MetadataFilterLabelMatchComputeV1>(map['filterLabels'], (value) => MetadataFilterLabelMatchComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      filterMatchCriteria: map['filterMatchCriteria'] == null ? null : (MetadataFilterFilterMatchCriteriaComputeV1.fromValue(map['filterMatchCriteria'] as String)).input(),
    );
  }
}

