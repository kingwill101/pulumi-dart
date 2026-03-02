// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_protocol.dart';

/// {@template pulumi_storage_list_storage_account_service_sasargs_doc}
/// Arguments for listStorageAccountServiceSAS.
/// {@endtemplate}
/// {@macro pulumi_storage_list_storage_account_service_sasargs_doc}
class ListStorageAccountServiceSASArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// The response header override for cache control.
  final pulumi.Input<String>? cacheControl;
  /// The canonical path to the signed resource.
  final pulumi.Input<String> canonicalizedResource;
  /// The response header override for content disposition.
  final pulumi.Input<String>? contentDisposition;
  /// The response header override for content encoding.
  final pulumi.Input<String>? contentEncoding;
  /// The response header override for content language.
  final pulumi.Input<String>? contentLanguage;
  /// The response header override for content type.
  final pulumi.Input<String>? contentType;
  /// An IP address or a range of IP addresses from which to accept requests.
  final pulumi.Input<String>? iPAddressOrRange;
  /// A unique value up to 64 characters in length that correlates to an access policy specified for the container, queue, or table.
  final pulumi.Input<String>? identifier;
  /// The key to sign the account SAS token with.
  final pulumi.Input<String>? keyToSign;
  /// The end of partition key.
  final pulumi.Input<String>? partitionKeyEnd;
  /// The start of partition key.
  final pulumi.Input<String>? partitionKeyStart;
  /// The signed permissions for the service SAS. Possible values include: Read (r), Write (w), Delete (d), List (l), Add (a), Create (c), Update (u) and Process (p).
  final pulumi.Input<String>? permissions;
  /// The protocol permitted for a request made with the account SAS.
  final pulumi.Input<HttpProtocol>? protocols;
  /// The signed services accessible with the service SAS. Possible values include: Blob (b), Container (c), File (f), Share (s).
  final pulumi.Input<String>? resource;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The end of row key.
  final pulumi.Input<String>? rowKeyEnd;
  /// The start of row key.
  final pulumi.Input<String>? rowKeyStart;
  /// The time at which the shared access signature becomes invalid.
  final pulumi.Input<String>? sharedAccessExpiryTime;
  /// The time at which the SAS becomes valid.
  final pulumi.Input<String>? sharedAccessStartTime;

  /// Creates a new [ListStorageAccountServiceSASArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [cacheControl] The response header override for cache control.
  /// [canonicalizedResource] The canonical path to the signed resource.
  /// [contentDisposition] The response header override for content disposition.
  /// [contentEncoding] The response header override for content encoding.
  /// [contentLanguage] The response header override for content language.
  /// [contentType] The response header override for content type.
  /// [iPAddressOrRange] An IP address or a range of IP addresses from which to accept requests.
  /// [identifier] A unique value up to 64 characters in length that correlates to an access policy specified for the container, queue, or table.
  /// [keyToSign] The key to sign the account SAS token with.
  /// [partitionKeyEnd] The end of partition key.
  /// [partitionKeyStart] The start of partition key.
  /// [permissions] The signed permissions for the service SAS. Possible values include: Read (r), Write (w), Delete (d), List (l), Add (a), Create (c), Update (u) and Process (p).
  /// [protocols] The protocol permitted for a request made with the account SAS.
  /// [resource] The signed services accessible with the service SAS. Possible values include: Blob (b), Container (c), File (f), Share (s).
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [rowKeyEnd] The end of row key.
  /// [rowKeyStart] The start of row key.
  /// [sharedAccessExpiryTime] The time at which the shared access signature becomes invalid.
  /// [sharedAccessStartTime] The time at which the SAS becomes valid.
  ListStorageAccountServiceSASArgs({
    required this.accountName,
    this.cacheControl,
    required this.canonicalizedResource,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.iPAddressOrRange,
    this.identifier,
    this.keyToSign,
    this.partitionKeyEnd,
    this.partitionKeyStart,
    this.permissions,
    this.protocols,
    this.resource,
    required this.resourceGroupName,
    this.rowKeyEnd,
    this.rowKeyStart,
    this.sharedAccessExpiryTime,
    this.sharedAccessStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'cacheControl': ?cacheControl,
      'canonicalizedResource': canonicalizedResource,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'iPAddressOrRange': ?iPAddressOrRange,
      'identifier': ?identifier,
      'keyToSign': ?keyToSign,
      'partitionKeyEnd': ?partitionKeyEnd,
      'partitionKeyStart': ?partitionKeyStart,
      'permissions': ?permissions,
      'protocols': ?pulumi.Input.mapOptionalInputValue<HttpProtocol, String>(protocols, (value) => value.value),
      'resource': ?resource,
      'resourceGroupName': resourceGroupName,
      'rowKeyEnd': ?rowKeyEnd,
      'rowKeyStart': ?rowKeyStart,
      'sharedAccessExpiryTime': ?sharedAccessExpiryTime,
      'sharedAccessStartTime': ?sharedAccessStartTime,
    };
  }

  factory ListStorageAccountServiceSASArgs.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountServiceSASArgs(
      accountName: (map['accountName'] as String).input(),
      cacheControl: map['cacheControl'] == null ? null : (map['cacheControl']! as String).input(),
      canonicalizedResource: (map['canonicalizedResource'] as String).input(),
      contentDisposition: map['contentDisposition'] == null ? null : (map['contentDisposition']! as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding']! as String).input(),
      contentLanguage: map['contentLanguage'] == null ? null : (map['contentLanguage']! as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      iPAddressOrRange: map['iPAddressOrRange'] == null ? null : (map['iPAddressOrRange']! as String).input(),
      identifier: map['identifier'] == null ? null : (map['identifier']! as String).input(),
      keyToSign: map['keyToSign'] == null ? null : (map['keyToSign']! as String).input(),
      partitionKeyEnd: map['partitionKeyEnd'] == null ? null : (map['partitionKeyEnd']! as String).input(),
      partitionKeyStart: map['partitionKeyStart'] == null ? null : (map['partitionKeyStart']! as String).input(),
      permissions: map['permissions'] == null ? null : (map['permissions']! as String).input(),
      protocols: map['protocols'] == null ? null : (HttpProtocol.fromValue(map['protocols']! as String)).input(),
      resource: map['resource'] == null ? null : (map['resource']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      rowKeyEnd: map['rowKeyEnd'] == null ? null : (map['rowKeyEnd']! as String).input(),
      rowKeyStart: map['rowKeyStart'] == null ? null : (map['rowKeyStart']! as String).input(),
      sharedAccessExpiryTime: map['sharedAccessExpiryTime'] == null ? null : (map['sharedAccessExpiryTime']! as String).input(),
      sharedAccessStartTime: map['sharedAccessStartTime'] == null ? null : (map['sharedAccessStartTime']! as String).input(),
    );
  }
}

