// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_bigquery_dataset_effective_replica.dart';
import 'listing_bigquery_dataset_selected_resource.dart';

class ListingBigqueryDataset {
  /// Resource name of the dataset source for this listing. e.g. projects/myproject/datasets/123
  final String dataset;
  /// (Output, Beta)
  /// Server owned effective state of replicas. Contains both primary and secondary replicas.
  /// Each replica includes a system-computed (output-only) state and primary designation.
  /// Structure is documented below.
  final List<ListingBigqueryDatasetEffectiveReplica>? effectiveReplicas;
  /// A list of regions where the publisher has created shared dataset replicas.
  final List<String>? replicaLocations;
  /// Resource in this dataset that is selectively shared. This field is required for data clean room exchanges.
  /// Structure is documented below.
  final List<ListingBigqueryDatasetSelectedResource>? selectedResources;

  /// Creates a new [ListingBigqueryDataset].
  /// [dataset] Resource name of the dataset source for this listing. e.g. projects/myproject/datasets/123
  /// [effectiveReplicas] (Output, Beta)
  /// [replicaLocations] A list of regions where the publisher has created shared dataset replicas.
  /// [selectedResources] Resource in this dataset that is selectively shared. This field is required for data clean room exchanges.
  ListingBigqueryDataset({
    required this.dataset,
    this.effectiveReplicas,
    this.replicaLocations,
    this.selectedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'effectiveReplicas': ?effectiveReplicas == null ? null : pulumi.Input.encodeList<ListingBigqueryDatasetEffectiveReplica, Map<String, dynamic>>(effectiveReplicas!, (value) => value.toMap()),
      'replicaLocations': ?replicaLocations,
      'selectedResources': ?selectedResources == null ? null : pulumi.Input.encodeList<ListingBigqueryDatasetSelectedResource, Map<String, dynamic>>(selectedResources!, (value) => value.toMap()),
    };
  }

  factory ListingBigqueryDataset.fromMap(Map<String, dynamic> map) {
    return ListingBigqueryDataset(
      dataset: map['dataset'] as String,
      effectiveReplicas: map['effectiveReplicas'] == null ? null : pulumi.Input.decodeList<ListingBigqueryDatasetEffectiveReplica>(map['effectiveReplicas'], (value) => ListingBigqueryDatasetEffectiveReplica.fromMap((value as Map).cast<String, dynamic>())),
      replicaLocations: map['replicaLocations'] == null ? null : (map['replicaLocations'] as List).cast<String>(),
      selectedResources: map['selectedResources'] == null ? null : pulumi.Input.decodeList<ListingBigqueryDatasetSelectedResource>(map['selectedResources'], (value) => ListingBigqueryDatasetSelectedResource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

