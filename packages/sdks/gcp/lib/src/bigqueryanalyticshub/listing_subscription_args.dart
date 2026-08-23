// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_subscription_destination_dataset.dart';

/// {@template pulumi_bigqueryanalyticshub_listing_subscription_listing_subscription_args_doc}
/// The set of arguments for ListingSubscription.
/// {@endtemplate}
/// {@macro pulumi_bigqueryanalyticshub_listing_subscription_listing_subscription_args_doc}
class ListingSubscriptionArgs {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> dataExchangeId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The destination dataset for this subscription.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationDataset> destinationDataset;
  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> listingId;
  /// The name of the location of the data exchange. Distinct from the location of the destination data set.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ListingSubscriptionArgs].
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [destinationDataset] The destination dataset for this subscription.
  /// [listingId] The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [location] The name of the location of the data exchange. Distinct from the location of the destination data set.
  /// [project] The ID of the project in which the resource belongs.
  const ListingSubscriptionArgs({
    required this.dataExchangeId,
    this.deletionPolicy,
    required this.destinationDataset,
    required this.listingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'deletionPolicy': ?deletionPolicy,
      'destinationDataset': pulumi.Input.mapInputValue<ListingSubscriptionDestinationDataset, Map<String, dynamic>>(destinationDataset, (value) => value.toMap()),
      'listingId': listingId,
      'location': location,
      'project': ?project,
    };
  }

  factory ListingSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionArgs(
      dataExchangeId: pulumi.Input.fromValue(map['dataExchangeId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationDataset: pulumi.Input.fromValue(ListingSubscriptionDestinationDataset.fromMap((map['destinationDataset']! as Map).cast<String, dynamic>())),
      listingId: pulumi.Input.fromValue(map['listingId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
