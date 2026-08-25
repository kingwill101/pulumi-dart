// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_subscription_destination_dataset.dart';
import 'data_exchange_subscription_linked_dataset_map.dart';
import 'data_exchange_subscription_linked_resource.dart';

/// Input properties used for looking up and filtering DataExchangeSubscription resources.
class DataExchangeSubscriptionState {
  /// Timestamp when the subscription was created.
  final pulumi.Input<String?>? creationTime;
  /// Output only. Resource name of the source Data Exchange. e.g. projects/123/locations/us/dataExchanges/456
  final pulumi.Input<String?>? dataExchange;
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String?>? dataExchangeId;
  /// The name of the location of the Data Exchange.
  final pulumi.Input<String?>? dataExchangeLocation;
  /// The ID of the Google Cloud project where the Data Exchange is located.
  final pulumi.Input<String?>? dataExchangeProject;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// BigQuery destination dataset to create for the subscriber.
  /// Structure is documented below.
  final pulumi.Input<DataExchangeSubscriptionDestinationDataset?>? destinationDataset;
  /// Timestamp when the subscription was last modified.
  final pulumi.Input<String?>? lastModifyTime;
  /// Output only. Map of listing resource names to associated linked resource,
  /// e.g. projects/123/locations/us/dataExchanges/456/listings/789 &gt; projects/123/datasets/my_dataset
  /// For Data Exchange subscriptions, this map may contain multiple entries if the Data Exchange has multiple listings.
  /// Structure is documented below.
  final pulumi.Input<List<DataExchangeSubscriptionLinkedDatasetMap>?>? linkedDatasetMaps;
  /// Output only. Linked resources created in the subscription. Only contains values if state = STATE_ACTIVE.
  /// Structure is documented below.
  final pulumi.Input<List<DataExchangeSubscriptionLinkedResource>?>? linkedResources;
  /// The geographic location where the Subscription (and its linked dataset) should reside.
  /// This is the subscriber's desired location for the created resources.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  final pulumi.Input<String?>? location;
  /// Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that is enabled for DataExchange/Listing.
  final pulumi.Input<bool?>? logLinkedDatasetQueryUserEmail;
  /// The resource name of the subscription. e.g. "projects/myproject/locations/us/subscriptions/123"
  final pulumi.Input<String?>? name;
  /// Display name of the project of this subscription.
  final pulumi.Input<String?>? organizationDisplayName;
  /// Organization of the project this subscription belongs to.
  final pulumi.Input<String?>? organizationId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Controls when the subscription is automatically refreshed by the provider.
  /// * `ON_READ`: Default value if not specified. The subscription will be refreshed every time Terraform performs a read operation (e.g., `pulumi preview`, `pulumi up`, `terraform refresh`). This ensures the state is always up-to-date.
  /// * `ON_STALE`: The subscription will only be refreshed when its reported `state` (an output-only field from the API) is `STATE_STALE` during a Terraform read operation.
  /// * `NEVER`: The provider will not automatically refresh the subscription.
  final pulumi.Input<String?>? refreshPolicy;
  /// Listing shared asset type.
  final pulumi.Input<String?>? resourceType;
  /// Current state of the subscription.
  final pulumi.Input<String?>? state;
  /// Email of the subscriber.
  final pulumi.Input<String?>? subscriberContact;
  /// Name of the subscription to create.
  final pulumi.Input<String?>? subscriptionId;

  /// Creates a new [DataExchangeSubscriptionState].
  /// [creationTime] Timestamp when the subscription was created.
  /// [dataExchange] Output only. Resource name of the source Data Exchange. e.g. projects/123/locations/us/dataExchanges/456
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [dataExchangeLocation] The name of the location of the Data Exchange.
  /// [dataExchangeProject] The ID of the Google Cloud project where the Data Exchange is located.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  /// [refreshPolicy] Controls when the subscription is automatically refreshed by the provider.
  /// [resourceType] Listing shared asset type.
  /// [state] Current state of the subscription.
  /// [subscriberContact] Email of the subscriber.
  /// [subscriptionId] Name of the subscription to create.
  const DataExchangeSubscriptionState({
    this.creationTime,
    this.dataExchange,
    this.dataExchangeId,
    this.dataExchangeLocation,
    this.dataExchangeProject,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExchange: (() { final guardedValue = map['dataExchange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExchangeId: (() { final guardedValue = map['dataExchangeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExchangeLocation: (() { final guardedValue = map['dataExchangeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExchangeProject: (() { final guardedValue = map['dataExchangeProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationDataset: (() { final guardedValue = map['destinationDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataExchangeSubscriptionDestinationDataset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastModifyTime: (() { final guardedValue = map['lastModifyTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedDatasetMaps: (() { final guardedValue = map['linkedDatasetMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataExchangeSubscriptionLinkedDatasetMap>(guardedValue, (value) => DataExchangeSubscriptionLinkedDatasetMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      linkedResources: (() { final guardedValue = map['linkedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataExchangeSubscriptionLinkedResource>(guardedValue, (value) => DataExchangeSubscriptionLinkedResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLinkedDatasetQueryUserEmail: (() { final guardedValue = map['logLinkedDatasetQueryUserEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationDisplayName: (() { final guardedValue = map['organizationDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshPolicy: (() { final guardedValue = map['refreshPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriberContact: (() { final guardedValue = map['subscriberContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
