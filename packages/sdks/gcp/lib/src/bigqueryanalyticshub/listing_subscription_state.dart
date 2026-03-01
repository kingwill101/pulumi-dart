// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_subscription_commercial_info.dart';
import 'listing_subscription_destination_dataset.dart';
import 'listing_subscription_linked_dataset_map.dart';
import 'listing_subscription_linked_resource.dart';

/// Input properties used for looking up and filtering ListingSubscription resources.
class ListingSubscriptionState {
  /// Commercial info metadata for this subscription. This is set if this is a commercial subscription i.e. if this subscription was created from subscribing to a commercial listing.
  /// Structure is documented below.
  final pulumi.Input<List<ListingSubscriptionCommercialInfo>>? commercialInfos;
  /// Timestamp when the subscription was created.
  final pulumi.Input<String>? creationTime;
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String>? dataExchangeId;
  /// The destination dataset for this subscription.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationDataset>? destinationDataset;
  /// Timestamp when the subscription was last modified.
  final pulumi.Input<String>? lastModifyTime;
  /// Output only. Map of listing resource names to associated linked resource,
  /// e.g. projects/123/locations/US/dataExchanges/456/listings/789 > projects/123/datasets/my_dataset
  /// Structure is documented below.
  final pulumi.Input<List<ListingSubscriptionLinkedDatasetMap>>? linkedDatasetMaps;
  /// Output only. Linked resources created in the subscription. Only contains values if state = STATE_ACTIVE.
  /// Structure is documented below.
  final pulumi.Input<List<ListingSubscriptionLinkedResource>>? linkedResources;
  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String>? listingId;
  /// The name of the location of the data exchange. Distinct from the location of the destination data set.
  final pulumi.Input<String>? location;
  /// Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that is enabled for Listing.
  final pulumi.Input<bool>? logLinkedDatasetQueryUserEmail;
  /// The resource name of the subscription. e.g. "projects/myproject/locations/US/subscriptions/123"
  final pulumi.Input<String>? name;
  /// Display name of the project of this subscription.
  final pulumi.Input<String>? organizationDisplayName;
  /// Organization of the project this subscription belongs to.
  final pulumi.Input<String>? organizationId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Listing shared asset type.
  final pulumi.Input<String>? resourceType;
  /// Current state of the subscription.
  final pulumi.Input<String>? state;
  /// Email of the subscriber.
  final pulumi.Input<String>? subscriberContact;
  /// The subscription id used to reference the subscription.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [ListingSubscriptionState].
  /// [commercialInfos] Commercial info metadata for this subscription. This is set if this is a commercial subscription i.e. if this subscription was created from subscribing to a commercial listing.
  /// [creationTime] Timestamp when the subscription was created.
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [destinationDataset] The destination dataset for this subscription.
  /// [lastModifyTime] Timestamp when the subscription was last modified.
  /// [linkedDatasetMaps] Output only. Map of listing resource names to associated linked resource,
  /// [linkedResources] Output only. Linked resources created in the subscription. Only contains values if state = STATE_ACTIVE.
  /// [listingId] The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [location] The name of the location of the data exchange. Distinct from the location of the destination data set.
  /// [logLinkedDatasetQueryUserEmail] Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that is enabled for Listing.
  /// [name] The resource name of the subscription. e.g. "projects/myproject/locations/US/subscriptions/123"
  /// [organizationDisplayName] Display name of the project of this subscription.
  /// [organizationId] Organization of the project this subscription belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceType] Listing shared asset type.
  /// [state] Current state of the subscription.
  /// [subscriberContact] Email of the subscriber.
  /// [subscriptionId] The subscription id used to reference the subscription.
  ListingSubscriptionState({
    pulumi.Output<List<ListingSubscriptionCommercialInfo>>? commercialInfos,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? dataExchangeId,
    pulumi.Output<ListingSubscriptionDestinationDataset>? destinationDataset,
    pulumi.Output<String>? lastModifyTime,
    pulumi.Output<List<ListingSubscriptionLinkedDatasetMap>>? linkedDatasetMaps,
    pulumi.Output<List<ListingSubscriptionLinkedResource>>? linkedResources,
    pulumi.Output<String>? listingId,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? logLinkedDatasetQueryUserEmail,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organizationDisplayName,
    pulumi.Output<String>? organizationId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? state,
    pulumi.Output<String>? subscriberContact,
    pulumi.Output<String>? subscriptionId,
  }) :
      commercialInfos = pulumi.Input.asOptionalInput<List<ListingSubscriptionCommercialInfo>>(commercialInfos),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      dataExchangeId = pulumi.Input.asOptionalInput<String>(dataExchangeId),
      destinationDataset = pulumi.Input.asOptionalInput<ListingSubscriptionDestinationDataset>(destinationDataset),
      lastModifyTime = pulumi.Input.asOptionalInput<String>(lastModifyTime),
      linkedDatasetMaps = pulumi.Input.asOptionalInput<List<ListingSubscriptionLinkedDatasetMap>>(linkedDatasetMaps),
      linkedResources = pulumi.Input.asOptionalInput<List<ListingSubscriptionLinkedResource>>(linkedResources),
      listingId = pulumi.Input.asOptionalInput<String>(listingId),
      location = pulumi.Input.asOptionalInput<String>(location),
      logLinkedDatasetQueryUserEmail = pulumi.Input.asOptionalInput<bool>(logLinkedDatasetQueryUserEmail),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationDisplayName = pulumi.Input.asOptionalInput<String>(organizationDisplayName),
      organizationId = pulumi.Input.asOptionalInput<String>(organizationId),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      state = pulumi.Input.asOptionalInput<String>(state),
      subscriberContact = pulumi.Input.asOptionalInput<String>(subscriberContact),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commercialInfos': ?pulumi.Input.mapOptionalInputValue<List<ListingSubscriptionCommercialInfo>, List<Map<String, dynamic>>>(commercialInfos, (value) => pulumi.Input.encodeList<ListingSubscriptionCommercialInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTime': ?creationTime,
      'dataExchangeId': ?dataExchangeId,
      'destinationDataset': ?pulumi.Input.mapOptionalInputValue<ListingSubscriptionDestinationDataset, Map<String, dynamic>>(destinationDataset, (value) => value.toMap()),
      'lastModifyTime': ?lastModifyTime,
      'linkedDatasetMaps': ?pulumi.Input.mapOptionalInputValue<List<ListingSubscriptionLinkedDatasetMap>, List<Map<String, dynamic>>>(linkedDatasetMaps, (value) => pulumi.Input.encodeList<ListingSubscriptionLinkedDatasetMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedResources': ?pulumi.Input.mapOptionalInputValue<List<ListingSubscriptionLinkedResource>, List<Map<String, dynamic>>>(linkedResources, (value) => pulumi.Input.encodeList<ListingSubscriptionLinkedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listingId': ?listingId,
      'location': ?location,
      'logLinkedDatasetQueryUserEmail': ?logLinkedDatasetQueryUserEmail,
      'name': ?name,
      'organizationDisplayName': ?organizationDisplayName,
      'organizationId': ?organizationId,
      'project': ?project,
      'resourceType': ?resourceType,
      'state': ?state,
      'subscriberContact': ?subscriberContact,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory ListingSubscriptionState.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionState(
      commercialInfos: map['commercialInfos'] == null ? null : pulumi.Output.create<List<ListingSubscriptionCommercialInfo>>(pulumi.Input.decodeList<ListingSubscriptionCommercialInfo>(map['commercialInfos'], (value) => ListingSubscriptionCommercialInfo.fromMap((value as Map).cast<String, dynamic>()))),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      dataExchangeId: map['dataExchangeId'] == null ? null : pulumi.Output.create<String>(map['dataExchangeId'] as String),
      destinationDataset: map['destinationDataset'] == null ? null : pulumi.Output.create<ListingSubscriptionDestinationDataset>(ListingSubscriptionDestinationDataset.fromMap((map['destinationDataset'] as Map).cast<String, dynamic>())),
      lastModifyTime: map['lastModifyTime'] == null ? null : pulumi.Output.create<String>(map['lastModifyTime'] as String),
      linkedDatasetMaps: map['linkedDatasetMaps'] == null ? null : pulumi.Output.create<List<ListingSubscriptionLinkedDatasetMap>>(pulumi.Input.decodeList<ListingSubscriptionLinkedDatasetMap>(map['linkedDatasetMaps'], (value) => ListingSubscriptionLinkedDatasetMap.fromMap((value as Map).cast<String, dynamic>()))),
      linkedResources: map['linkedResources'] == null ? null : pulumi.Output.create<List<ListingSubscriptionLinkedResource>>(pulumi.Input.decodeList<ListingSubscriptionLinkedResource>(map['linkedResources'], (value) => ListingSubscriptionLinkedResource.fromMap((value as Map).cast<String, dynamic>()))),
      listingId: map['listingId'] == null ? null : pulumi.Output.create<String>(map['listingId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logLinkedDatasetQueryUserEmail: map['logLinkedDatasetQueryUserEmail'] == null ? null : pulumi.Output.create<bool>(map['logLinkedDatasetQueryUserEmail'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationDisplayName: map['organizationDisplayName'] == null ? null : pulumi.Output.create<String>(map['organizationDisplayName'] as String),
      organizationId: map['organizationId'] == null ? null : pulumi.Output.create<String>(map['organizationId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      subscriberContact: map['subscriberContact'] == null ? null : pulumi.Output.create<String>(map['subscriberContact'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

