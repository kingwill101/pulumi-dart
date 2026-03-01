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
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? dataExchange,
    pulumi.Output<String>? dataExchangeId,
    pulumi.Output<String>? dataExchangeLocation,
    pulumi.Output<String>? dataExchangeProject,
    pulumi.Output<DataExchangeSubscriptionDestinationDataset>? destinationDataset,
    pulumi.Output<String>? lastModifyTime,
    pulumi.Output<List<DataExchangeSubscriptionLinkedDatasetMap>>? linkedDatasetMaps,
    pulumi.Output<List<DataExchangeSubscriptionLinkedResource>>? linkedResources,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? logLinkedDatasetQueryUserEmail,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organizationDisplayName,
    pulumi.Output<String>? organizationId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? refreshPolicy,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? state,
    pulumi.Output<String>? subscriberContact,
    pulumi.Output<String>? subscriptionId,
  }) :
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      dataExchange = pulumi.Input.asOptionalInput<String>(dataExchange),
      dataExchangeId = pulumi.Input.asOptionalInput<String>(dataExchangeId),
      dataExchangeLocation = pulumi.Input.asOptionalInput<String>(dataExchangeLocation),
      dataExchangeProject = pulumi.Input.asOptionalInput<String>(dataExchangeProject),
      destinationDataset = pulumi.Input.asOptionalInput<DataExchangeSubscriptionDestinationDataset>(destinationDataset),
      lastModifyTime = pulumi.Input.asOptionalInput<String>(lastModifyTime),
      linkedDatasetMaps = pulumi.Input.asOptionalInput<List<DataExchangeSubscriptionLinkedDatasetMap>>(linkedDatasetMaps),
      linkedResources = pulumi.Input.asOptionalInput<List<DataExchangeSubscriptionLinkedResource>>(linkedResources),
      location = pulumi.Input.asOptionalInput<String>(location),
      logLinkedDatasetQueryUserEmail = pulumi.Input.asOptionalInput<bool>(logLinkedDatasetQueryUserEmail),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationDisplayName = pulumi.Input.asOptionalInput<String>(organizationDisplayName),
      organizationId = pulumi.Input.asOptionalInput<String>(organizationId),
      project = pulumi.Input.asOptionalInput<String>(project),
      refreshPolicy = pulumi.Input.asOptionalInput<String>(refreshPolicy),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      state = pulumi.Input.asOptionalInput<String>(state),
      subscriberContact = pulumi.Input.asOptionalInput<String>(subscriberContact),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

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
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      dataExchange: map['dataExchange'] == null ? null : pulumi.Output.create<String>(map['dataExchange'] as String),
      dataExchangeId: map['dataExchangeId'] == null ? null : pulumi.Output.create<String>(map['dataExchangeId'] as String),
      dataExchangeLocation: map['dataExchangeLocation'] == null ? null : pulumi.Output.create<String>(map['dataExchangeLocation'] as String),
      dataExchangeProject: map['dataExchangeProject'] == null ? null : pulumi.Output.create<String>(map['dataExchangeProject'] as String),
      destinationDataset: map['destinationDataset'] == null ? null : pulumi.Output.create<DataExchangeSubscriptionDestinationDataset>(DataExchangeSubscriptionDestinationDataset.fromMap((map['destinationDataset'] as Map).cast<String, dynamic>())),
      lastModifyTime: map['lastModifyTime'] == null ? null : pulumi.Output.create<String>(map['lastModifyTime'] as String),
      linkedDatasetMaps: map['linkedDatasetMaps'] == null ? null : pulumi.Output.create<List<DataExchangeSubscriptionLinkedDatasetMap>>(pulumi.Input.decodeList<DataExchangeSubscriptionLinkedDatasetMap>(map['linkedDatasetMaps'], (value) => DataExchangeSubscriptionLinkedDatasetMap.fromMap((value as Map).cast<String, dynamic>()))),
      linkedResources: map['linkedResources'] == null ? null : pulumi.Output.create<List<DataExchangeSubscriptionLinkedResource>>(pulumi.Input.decodeList<DataExchangeSubscriptionLinkedResource>(map['linkedResources'], (value) => DataExchangeSubscriptionLinkedResource.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logLinkedDatasetQueryUserEmail: map['logLinkedDatasetQueryUserEmail'] == null ? null : pulumi.Output.create<bool>(map['logLinkedDatasetQueryUserEmail'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationDisplayName: map['organizationDisplayName'] == null ? null : pulumi.Output.create<String>(map['organizationDisplayName'] as String),
      organizationId: map['organizationId'] == null ? null : pulumi.Output.create<String>(map['organizationId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      refreshPolicy: map['refreshPolicy'] == null ? null : pulumi.Output.create<String>(map['refreshPolicy'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      subscriberContact: map['subscriberContact'] == null ? null : pulumi.Output.create<String>(map['subscriberContact'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

