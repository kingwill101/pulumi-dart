// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_subscription_destination_dataset_dataset_reference.dart';

class DataExchangeSubscriptionDestinationDataset {
  /// A reference that identifies the destination dataset.
  /// Structure is documented below.
  final pulumi.Input<DataExchangeSubscriptionDestinationDatasetDatasetReference>
  datasetReference;

  /// A user-friendly description of the dataset.
  final pulumi.Input<String>? description;

  /// A descriptive name for the dataset.
  final pulumi.Input<String>? friendlyName;

  /// The labels associated with this dataset. You can use these to
  /// organize and group your datasets.
  final pulumi.Input<Map<String, String>>? labels;

  /// The geographic location where the dataset should reside.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final pulumi.Input<String> location;

  /// Creates a new [DataExchangeSubscriptionDestinationDataset].
  /// [datasetReference] A reference that identifies the destination dataset.
  /// [description] A user-friendly description of the dataset.
  /// [friendlyName] A descriptive name for the dataset.
  /// [labels] The labels associated with this dataset. You can use these to
  /// [location] The geographic location where the dataset should reside.
  DataExchangeSubscriptionDestinationDataset({
    required this.datasetReference,
    this.description,
    this.friendlyName,
    this.labels,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetReference':
          pulumi.Input.mapInputValue<
            DataExchangeSubscriptionDestinationDatasetDatasetReference,
            Map<String, dynamic>
          >(datasetReference, (value) => value.toMap()),
      'description': ?description,
      'friendlyName': ?friendlyName,
      'labels': ?labels,
      'location': location,
    };
  }

  factory DataExchangeSubscriptionDestinationDataset.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataExchangeSubscriptionDestinationDataset(
      datasetReference: pulumi.Input.fromValue(
        DataExchangeSubscriptionDestinationDatasetDatasetReference.fromMap(
          (map['datasetReference']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      friendlyName: (() {
        final guardedValue = map['friendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}
