// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_subscription_destination_dataset_dataset_reference.dart';

class ListingSubscriptionDestinationDataset {
  /// A reference that identifies the destination dataset.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationDatasetDatasetReference> datasetReference;
  /// A user-friendly description of the dataset.
  final pulumi.Input<String?>? description;
  /// A descriptive name for the dataset.
  final pulumi.Input<String?>? friendlyName;
  /// The labels associated with this dataset. You can use these to
  /// organize and group your datasets.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The geographic location where the dataset should reside.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final pulumi.Input<String> location;
  /// List of regions where the subscriber wants dataset replicas.
  final pulumi.Input<List<String>?>? replicaLocations;

  /// Creates a new [ListingSubscriptionDestinationDataset].
  /// [datasetReference] A reference that identifies the destination dataset.
  /// [description] A user-friendly description of the dataset.
  /// [friendlyName] A descriptive name for the dataset.
  /// [labels] The labels associated with this dataset. You can use these to
  /// [location] The geographic location where the dataset should reside.
  /// [replicaLocations] List of regions where the subscriber wants dataset replicas.
  const ListingSubscriptionDestinationDataset({
    required this.datasetReference,
    this.description,
    this.friendlyName,
    this.labels,
    required this.location,
    this.replicaLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetReference': pulumi.Input.mapInputValue<ListingSubscriptionDestinationDatasetDatasetReference, Map<String, dynamic>>(datasetReference, (value) => value.toMap()),
      'description': ?description,
      'friendlyName': ?friendlyName,
      'labels': ?labels,
      'location': location,
      'replicaLocations': ?replicaLocations,
    };
  }

  factory ListingSubscriptionDestinationDataset.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationDataset(
      datasetReference: pulumi.Input.fromValue(ListingSubscriptionDestinationDatasetDatasetReference.fromMap((map['datasetReference']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      replicaLocations: (() { final guardedValue = map['replicaLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
