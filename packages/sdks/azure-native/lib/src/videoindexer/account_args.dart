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
  final pulumi.Input<String?>? accountId;
  /// The name of the Azure Video Indexer account.
  final pulumi.Input<String?>? accountName;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The storage services details
  final pulumi.Input<StorageServicesForPutRequest?>? storageServices;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccountArgs].
  /// [accountId] The account's data-plane ID. This can be set only when connecting an existing classic account
  /// [accountName] The name of the Azure Video Indexer account.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageServices] The storage services details
  /// [tags] Resource tags.
  AccountArgs({
    pulumi.Input<String?>? accountId,
    this.accountName,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.storageServices,
    this.tags,
  }) : accountId = accountId ?? pulumi.Input.fromValue('00000000-0000-0000-0000-000000000000');

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageServices: (() { final guardedValue = map['storageServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageServicesForPutRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
