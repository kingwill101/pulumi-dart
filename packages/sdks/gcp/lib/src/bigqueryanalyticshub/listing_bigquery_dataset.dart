// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_bigquery_dataset_effective_replica.dart';
import 'listing_bigquery_dataset_selected_resource.dart';

class ListingBigqueryDataset {
  /// Resource name of the dataset source for this listing. e.g. projects/myproject/datasets/123
  final pulumi.Input<String> dataset;

  /// (Output, Beta)
  /// Server owned effective state of replicas. Contains both primary and secondary replicas.
  /// Each replica includes a system-computed (output-only) state and primary designation.
  /// Structure is documented below.
  final pulumi.Input<List<ListingBigqueryDatasetEffectiveReplica>>?
  effectiveReplicas;

  /// A list of regions where the publisher has created shared dataset replicas.
  final pulumi.Input<List<String>>? replicaLocations;

  /// Resource in this dataset that is selectively shared. This field is required for data clean room exchanges.
  /// Structure is documented below.
  final pulumi.Input<List<ListingBigqueryDatasetSelectedResource>>?
  selectedResources;

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
      'effectiveReplicas':
          ?pulumi.Input.mapOptionalInputValue<
            List<ListingBigqueryDatasetEffectiveReplica>,
            List<Map<String, dynamic>>
          >(
            effectiveReplicas,
            (value) =>
                pulumi.Input.encodeList<
                  ListingBigqueryDatasetEffectiveReplica,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'replicaLocations': ?replicaLocations,
      'selectedResources':
          ?pulumi.Input.mapOptionalInputValue<
            List<ListingBigqueryDatasetSelectedResource>,
            List<Map<String, dynamic>>
          >(
            selectedResources,
            (value) =>
                pulumi.Input.encodeList<
                  ListingBigqueryDatasetSelectedResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ListingBigqueryDataset.fromMap(Map<String, dynamic> map) {
    return ListingBigqueryDataset(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      effectiveReplicas: (() {
        final guardedValue = map['effectiveReplicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ListingBigqueryDatasetEffectiveReplica>(
            guardedValue,
            (value) => ListingBigqueryDatasetEffectiveReplica.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      replicaLocations: (() {
        final guardedValue = map['replicaLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      selectedResources: (() {
        final guardedValue = map['selectedResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ListingBigqueryDatasetSelectedResource>(
            guardedValue,
            (value) => ListingBigqueryDatasetSelectedResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
