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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? iPAddressOrRange,
    pulumi.Output<String>? keyToSign,
    required pulumi.Output<String> permissions,
    pulumi.Output<HttpProtocol>? protocols,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceTypes,
    required pulumi.Output<String> services,
    required pulumi.Output<String> sharedAccessExpiryTime,
    pulumi.Output<String>? sharedAccessStartTime,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      iPAddressOrRange = pulumi.Input.asOptionalInput<String>(iPAddressOrRange),
      keyToSign = pulumi.Input.asOptionalInput<String>(keyToSign),
      permissions = pulumi.Input.asInput<String>(permissions),
      protocols = pulumi.Input.asOptionalInput<HttpProtocol>(protocols),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceTypes = pulumi.Input.asInput<String>(resourceTypes),
      services = pulumi.Input.asInput<String>(services),
      sharedAccessExpiryTime = pulumi.Input.asInput<String>(sharedAccessExpiryTime),
      sharedAccessStartTime = pulumi.Input.asOptionalInput<String>(sharedAccessStartTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'iPAddressOrRange': ?iPAddressOrRange,
      'keyToSign': ?keyToSign,
      'permissions': permissions,
      'protocols': ?pulumi.Input.mapOptionalInputValue<HttpProtocol, String>(protocols, (value) => value.value),
      'resourceGroupName': resourceGroupName,
      'resourceTypes': resourceTypes,
      'services': services,
      'sharedAccessExpiryTime': sharedAccessExpiryTime,
      'sharedAccessStartTime': ?sharedAccessStartTime,
    };
  }

  factory ListStorageAccountSASArgs.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountSASArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      iPAddressOrRange: map['iPAddressOrRange'] == null ? null : pulumi.Output.create<String>(map['iPAddressOrRange'] as String),
      keyToSign: map['keyToSign'] == null ? null : pulumi.Output.create<String>(map['keyToSign'] as String),
      permissions: pulumi.Output.create<String>(map['permissions'] as String),
      protocols: map['protocols'] == null ? null : pulumi.Output.create<HttpProtocol>(HttpProtocol.fromValue(map['protocols'] as String)),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceTypes: pulumi.Output.create<String>(map['resourceTypes'] as String),
      services: pulumi.Output.create<String>(map['services'] as String),
      sharedAccessExpiryTime: pulumi.Output.create<String>(map['sharedAccessExpiryTime'] as String),
      sharedAccessStartTime: map['sharedAccessStartTime'] == null ? null : pulumi.Output.create<String>(map['sharedAccessStartTime'] as String),
    );
  }
}

