// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_subscription_destination_dataset.dart';
import 'data_exchange_subscription_linked_dataset_map.dart';
import 'data_exchange_subscription_linked_resource.dart';

/// Input properties used for looking up and filtering DataExchangeSubscription resources.
class DataExchangeSubscriptionState {
  /// Timestamp when the subscription was created.
  final pulumi.Input<String>? creationTime;
  /// Output only. Resource name of the source Data Exchange. e.g. projects/123/locations/us/dataExchanges/456
  final pulumi.Input<String>? dataExchange;
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String>? dataExchangeId;
  /// The name of the location of the Data Exchange.
  final pulumi.Input<String>? dataExchangeLocation;
  /// The ID of the Google Cloud project where the Data Exchange is located.
  final pulumi.Input<String>? dataExchangeProject;
  /// BigQuery destination dataset to create for the subscriber.
  /// Structure is documented below.
  final pulumi.Input<DataExchangeSubscriptionDestinationDataset>? destinationDataset;
  /// Timestamp when the subscription was last modified.
  final pulumi.Input<String>? lastModifyTime;
  /// Output only. Map of listing resource names to associated linked resource,
  /// e.g. projects/123/locations/us/dataExchanges/456/listings/789 > projects/123/datasets/my_dataset
  /// For Data Exchange subscriptions, this map may contain multiple entries if the Data Exchange has multiple listings.
  /// Structure is documented below.
  final pulumi.Input<List<DataExchangeSubscriptionLinkedDatasetMap>>? linkedDatasetMaps;
  /// Output only. Linked resources created in the subscription. Only contains values if state = STATE_ACTIVE.
  /// Structure is documented below.
  final pulumi.Input<List<DataExchangeSubscriptionLinkedResource>>? linkedResources;
  /// The geographic location where the Subscription (and its linked dataset) should reside.
  /// This is the subscriber's desired location for the created resources.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final pulumi.Input<String>? location;
  /// Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that is enabled for DataExchange/Listing.
  final pulumi.Input<bool>? logLinkedDatasetQueryUserEmail;
  /// The resource name of the subscription. e.g. "projects/myproject/locations/us/subscriptions/123"
  final pulumi.Input<String>? name;
  /// Display name of the project of this subscription.
  final pulumi.Input<String>? organizationDisplayName;
  /// Organization of the project this subscription belongs to.
  final pulumi.Input<String>? organizationId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? refreshPolicy;
  /// Listing shared asset type.
  final pulumi.Input<String>? resourceType;
  /// Current state of the subscription.
  final pulumi.Input<String>? state;
  /// Email of the subscriber.
  final pulumi.Input<String>? subscriberContact;
  /// Name of the subscription to create.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [DataExchangeSubscriptionState].
  /// [creationTime] Timestamp when the subscription was created.
  /// [dataExchange] Output only. Resource name of the source Data Exchange. e.g. projects/123/locations/us/dataExchanges/456
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [dataExchangeLocation] The name of the location of the Data Exchange.
  /// [dataExchangeProject] The ID of the Google Cloud project where the Data Exchange is located.
  /// [destinationDataset] BigQuery destination dataset to create for the subscriber.
  /// [lastModifyTime] Timestamp when the subscription was last modified.
  /// [linkedDatasetMaps] Output only. Map of listing resource names to associated linked resource,
  /// [linkedResources] Output only. Linked resources created in the subscription. Only contains values if state = STATE_ACTIVE.
  /// [location] The geographic location where the Subscription (and its linked dataset) should reside.
  /// [logLinkedDatasetQueryUserEmail] Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that is enabled for DataExchange/Listing.
  /// [name] The resource name of the subscription. e.g. "projects/myproject/locations/us/subscriptions/123"
  /// [organizationDisplayName] Display name of the project of this subscription.
  /// [organizationId] Organization of the project this subscription belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [refreshPolicy] Optional.
  /// [resourceType] Listing shared asset type.
  /// [state] Current state of the subscription.
  /// [subscriberContact] Email of the subscriber.
  /// [subscriptionId] Name of the subscription to create.
  DataExchangeSubscriptionState({
    this.creationTime,
    this.dataExchange,
    this.dataExchangeId,
    this.dataExchangeLocation,
    this.dataExchangeProject,
    this.destinationDataset,
    this.lastModifyTime,
    this.linkedDatasetMaps,
    this.linkedResources,
    this.location,
    this.logLinkedDatasetQueryUserEmail,
    this.name,
    this.organizationDisplayName,
    this.organizationId,
    this.project,
    this.refreshPolicy,
    this.resourceType,
    this.state,
    this.subscriberContact,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'dataExchange': ?dataExchange,
      'dataExchangeId': ?dataExchangeId,
      'dataExchangeLocation': ?dataExchangeLocation,
      'dataExchangeProject': ?dataExchangeProject,
      'destinationDataset': ?pulumi.Input.mapOptionalInputValue<DataExchangeSubscriptionDestinationDataset, Map<String, dynamic>>(destinationDataset, (value) => value.toMap()),
      'lastModifyTime': ?lastModifyTime,
      'linkedDatasetMaps': ?pulumi.Input.mapOptionalInputValue<List<DataExchangeSubscriptionLinkedDatasetMap>, List<Map<String, dynamic>>>(linkedDatasetMaps, (value) => pulumi.Input.encodeList<DataExchangeSubscriptionLinkedDatasetMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedResources': ?pulumi.Input.mapOptionalInputValue<List<DataExchangeSubscriptionLinkedResource>, List<Map<String, dynamic>>>(linkedResources, (value) => pulumi.Input.encodeList<DataExchangeSubscriptionLinkedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'logLinkedDatasetQueryUserEmail': ?logLinkedDatasetQueryUserEmail,
      'name': ?name,
      'organizationDisplayName': ?organizationDisplayName,
      'organizationId': ?organizationId,
      'project': ?project,
      'refreshPolicy': ?refreshPolicy,
      'resourceType': ?resourceType,
      'state': ?state,
      'subscriberContact': ?subscriberContact,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory DataExchangeSubscriptionState.fromMap(Map<String, dynamic> map) {
    return DataExchangeSubscriptionState(
      creationTime: map['creationTime'] == null ? null : (map['creationTime']! as String).input(),
      dataExchange: map['dataExchange'] == null ? null : (map['dataExchange']! as String).input(),
      dataExchangeId: map['dataExchangeId'] == null ? null : (map['dataExchangeId']! as String).input(),
      dataExchangeLocation: map['dataExchangeLocation'] == null ? null : (map['dataExchangeLocation']! as String).input(),
      dataExchangeProject: map['dataExchangeProject'] == null ? null : (map['dataExchangeProject']! as String).input(),
      destinationDataset: map['destinationDataset'] == null ? null : (DataExchangeSubscriptionDestinationDataset.fromMap((map['destinationDataset']! as Map).cast<String, dynamic>())).input(),
      lastModifyTime: map['lastModifyTime'] == null ? null : (map['lastModifyTime']! as String).input(),
      linkedDatasetMaps: map['linkedDatasetMaps'] == null ? null : (pulumi.Input.decodeList<DataExchangeSubscriptionLinkedDatasetMap>(map['linkedDatasetMaps']!, (value) => DataExchangeSubscriptionLinkedDatasetMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linkedResources: map['linkedResources'] == null ? null : (pulumi.Input.decodeList<DataExchangeSubscriptionLinkedResource>(map['linkedResources']!, (value) => DataExchangeSubscriptionLinkedResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logLinkedDatasetQueryUserEmail: map['logLinkedDatasetQueryUserEmail'] == null ? null : (map['logLinkedDatasetQueryUserEmail']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organizationDisplayName: map['organizationDisplayName'] == null ? null : (map['organizationDisplayName']! as String).input(),
      organizationId: map['organizationId'] == null ? null : (map['organizationId']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      refreshPolicy: map['refreshPolicy'] == null ? null : (map['refreshPolicy']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subscriberContact: map['subscriberContact'] == null ? null : (map['subscriberContact']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

