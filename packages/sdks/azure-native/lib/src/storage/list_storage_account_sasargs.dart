// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_protocol.dart';

/// {@template pulumi_storage_list_storage_account_sasargs_doc}
/// Arguments for listStorageAccountSAS.
/// {@endtemplate}
/// {@macro pulumi_storage_list_storage_account_sasargs_doc}
class ListStorageAccountSASArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;

  /// An IP address or a range of IP addresses from which to accept requests.
  final pulumi.Input<String>? iPAddressOrRange;

  /// The key to sign the account SAS token with.
  final pulumi.Input<String>? keyToSign;

  /// The signed permissions for the account SAS. Possible values include: Read (r), Write (w), Delete (d), List (l), Add (a), Create (c), Update (u) and Process (p).
  final pulumi.Input<String> permissions;

  /// The protocol permitted for a request made with the account SAS.
  final pulumi.Input<HttpProtocol>? protocols;

  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The signed resource types that are accessible with the account SAS. Service (s): Access to service-level APIs; Container (c): Access to container-level APIs; Object (o): Access to object-level APIs for blobs, queue messages, table entities, and files.
  final pulumi.Input<String> resourceTypes;

  /// The signed services accessible with the account SAS. Possible values include: Blob (b), Queue (q), Table (t), File (f).
  final pulumi.Input<String> services;

  /// The time at which the shared access signature becomes invalid.
  final pulumi.Input<String> sharedAccessExpiryTime;

  /// The time at which the SAS becomes valid.
  final pulumi.Input<String>? sharedAccessStartTime;

  /// Creates a new [ListStorageAccountSASArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [iPAddressOrRange] An IP address or a range of IP addresses from which to accept requests.
  /// [keyToSign] The key to sign the account SAS token with.
  /// [permissions] The signed permissions for the account SAS. Possible values include: Read (r), Write (w), Delete (d), List (l), Add (a), Create (c), Update (u) and Process (p).
  /// [protocols] The protocol permitted for a request made with the account SAS.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [resourceTypes] The signed resource types that are accessible with the account SAS. Service (s): Access to service-level APIs; Container (c): Access to container-level APIs; Object (o): Access to object-level APIs for blobs, queue messages, table entities, and files.
  /// [services] The signed services accessible with the account SAS. Possible values include: Blob (b), Queue (q), Table (t), File (f).
  /// [sharedAccessExpiryTime] The time at which the shared access signature becomes invalid.
  /// [sharedAccessStartTime] The time at which the SAS becomes valid.
  ListStorageAccountSASArgs({
    required this.accountName,
    this.iPAddressOrRange,
    this.keyToSign,
    required this.permissions,
    this.protocols,
    required this.resourceGroupName,
    required this.resourceTypes,
    required this.services,
    required this.sharedAccessExpiryTime,
    this.sharedAccessStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'iPAddressOrRange': ?iPAddressOrRange,
      'keyToSign': ?keyToSign,
      'permissions': permissions,
      'protocols': ?pulumi.Input.mapOptionalInputValue<HttpProtocol, String>(
        protocols,
        (value) => value.wireValue,
      ),
      'resourceGroupName': resourceGroupName,
      'resourceTypes': resourceTypes,
      'services': services,
      'sharedAccessExpiryTime': sharedAccessExpiryTime,
      'sharedAccessStartTime': ?sharedAccessStartTime,
    };
  }

  factory ListStorageAccountSASArgs.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountSASArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      iPAddressOrRange: (() {
        final guardedValue = map['iPAddressOrRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyToSign: (() {
        final guardedValue = map['keyToSign'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      protocols: (() {
        final guardedValue = map['protocols'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpProtocol.fromValue(guardedValue as String),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceTypes: pulumi.Input.fromValue(map['resourceTypes'] as String),
      services: pulumi.Input.fromValue(map['services'] as String),
      sharedAccessExpiryTime: pulumi.Input.fromValue(
        map['sharedAccessExpiryTime'] as String,
      ),
      sharedAccessStartTime: (() {
        final guardedValue = map['sharedAccessStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
