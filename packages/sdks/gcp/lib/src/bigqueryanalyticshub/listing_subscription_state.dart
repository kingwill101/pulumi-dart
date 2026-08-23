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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The destination dataset for this subscription.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationDataset>? destinationDataset;
  /// Timestamp when the subscription was last modified.
  final pulumi.Input<String>? lastModifyTime;
  /// Output only. Map of listing resource names to associated linked resource,
  /// e.g. projects/123/locations/US/dataExchanges/456/listings/789 &gt; projects/123/datasets/my_dataset
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const ListingSubscriptionState({
    this.commercialInfos,
    this.creationTime,
    this.dataExchangeId,
    this.deletionPolicy,
    this.destinationDataset,
    this.lastModifyTime,
    this.linkedDatasetMaps,
    this.linkedResources,
    this.listingId,
    this.location,
    this.logLinkedDatasetQueryUserEmail,
    this.name,
    this.organizationDisplayName,
    this.organizationId,
    this.project,
    this.resourceType,
    this.state,
    this.subscriberContact,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commercialInfos': ?pulumi.Input.mapOptionalInputValue<List<ListingSubscriptionCommercialInfo>, List<Map<String, dynamic>>>(commercialInfos, (value) => pulumi.Input.encodeList<ListingSubscriptionCommercialInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTime': ?creationTime,
      'dataExchangeId': ?dataExchangeId,
      'deletionPolicy': ?deletionPolicy,
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
      commercialInfos: (() { final guardedValue = map['commercialInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListingSubscriptionCommercialInfo>(guardedValue, (value) => ListingSubscriptionCommercialInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExchangeId: (() { final guardedValue = map['dataExchangeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationDataset: (() { final guardedValue = map['destinationDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListingSubscriptionDestinationDataset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastModifyTime: (() { final guardedValue = map['lastModifyTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedDatasetMaps: (() { final guardedValue = map['linkedDatasetMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListingSubscriptionLinkedDatasetMap>(guardedValue, (value) => ListingSubscriptionLinkedDatasetMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      linkedResources: (() { final guardedValue = map['linkedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListingSubscriptionLinkedResource>(guardedValue, (value) => ListingSubscriptionLinkedResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      listingId: (() { final guardedValue = map['listingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLinkedDatasetQueryUserEmail: (() { final guardedValue = map['logLinkedDatasetQueryUserEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationDisplayName: (() { final guardedValue = map['organizationDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriberContact: (() { final guardedValue = map['subscriberContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
