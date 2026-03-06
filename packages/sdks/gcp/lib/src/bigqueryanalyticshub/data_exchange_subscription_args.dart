// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_subscription_destination_dataset.dart';

/// {@template pulumi_bigqueryanalyticshub_data_exchange_subscription_data_exchange_subscription_args_doc}
/// The set of arguments for DataExchangeSubscription.
/// {@endtemplate}
/// {@macro pulumi_bigqueryanalyticshub_data_exchange_subscription_data_exchange_subscription_args_doc}
class DataExchangeSubscriptionArgs {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> dataExchangeId;
  /// The name of the location of the Data Exchange.
  final pulumi.Input<String> dataExchangeLocation;
  /// The ID of the Google Cloud project where the Data Exchange is located.
  final pulumi.Input<String> dataExchangeProject;
  /// BigQuery destination dataset to create for the subscriber.
  /// Structure is documented below.
  final pulumi.Input<DataExchangeSubscriptionDestinationDataset>? destinationDataset;
  /// The geographic location where the Subscription (and its linked dataset) should reside.
  /// This is the subscriber's desired location for the created resources.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? refreshPolicy;
  /// Email of the subscriber.
  final pulumi.Input<String>? subscriberContact;
  /// Name of the subscription to create.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [DataExchangeSubscriptionArgs].
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [dataExchangeLocation] The name of the location of the Data Exchange.
  /// [dataExchangeProject] The ID of the Google Cloud project where the Data Exchange is located.
  /// [destinationDataset] BigQuery destination dataset to create for the subscriber.
  /// [location] The geographic location where the Subscription (and its linked dataset) should reside.
  /// [project] The ID of the project in which the resource belongs.
  /// [refreshPolicy] Optional.
  /// [subscriberContact] Email of the subscriber.
  /// [subscriptionId] Name of the subscription to create.
  const DataExchangeSubscriptionArgs({
    required this.dataExchangeId,
    required this.dataExchangeLocation,
    required this.dataExchangeProject,
    this.destinationDataset,
    required this.location,
    this.project,
    this.refreshPolicy,
    this.subscriberContact,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'dataExchangeLocation': dataExchangeLocation,
      'dataExchangeProject': dataExchangeProject,
      'destinationDataset': ?pulumi.Input.mapOptionalInputValue<DataExchangeSubscriptionDestinationDataset, Map<String, dynamic>>(destinationDataset, (value) => value.toMap()),
      'location': location,
      'project': ?project,
      'refreshPolicy': ?refreshPolicy,
      'subscriberContact': ?subscriberContact,
      'subscriptionId': subscriptionId,
    };
  }

  factory DataExchangeSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return DataExchangeSubscriptionArgs(
      dataExchangeId: pulumi.Input.fromValue(map['dataExchangeId'] as String),
      dataExchangeLocation: pulumi.Input.fromValue(map['dataExchangeLocation'] as String),
      dataExchangeProject: pulumi.Input.fromValue(map['dataExchangeProject'] as String),
      destinationDataset: (() { final guardedValue = map['destinationDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataExchangeSubscriptionDestinationDataset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshPolicy: (() { final guardedValue = map['refreshPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriberContact: (() { final guardedValue = map['subscriberContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}

