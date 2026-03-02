// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'storage_services_for_put_request.dart';

/// {@template pulumi_videoindexer_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_videoindexer_account_args_doc}
class AccountArgs {
  /// The account's data-plane ID. This can be set only when connecting an existing classic account
  final pulumi.Input<String>? accountId;
  /// The name of the Azure Video Indexer account.
  final pulumi.Input<String>? accountName;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The storage services details
  final pulumi.Input<StorageServicesForPutRequest>? storageServices;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [accountId] The account's data-plane ID. This can be set only when connecting an existing classic account
  /// [accountName] The name of the Azure Video Indexer account.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageServices] The storage services details
  /// [tags] Resource tags.
  AccountArgs({
    this.accountId,
    this.accountName,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.storageServices,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageServices': ?pulumi.Input.mapOptionalInputValue<StorageServicesForPutRequest, Map<String, dynamic>>(storageServices, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageServices: map['storageServices'] == null ? null : (StorageServicesForPutRequest.fromMap((map['storageServices'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

