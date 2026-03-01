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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? cacheControl,
    required pulumi.Output<String> canonicalizedResource,
    pulumi.Output<String>? contentDisposition,
    pulumi.Output<String>? contentEncoding,
    pulumi.Output<String>? contentLanguage,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? iPAddressOrRange,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? keyToSign,
    pulumi.Output<String>? partitionKeyEnd,
    pulumi.Output<String>? partitionKeyStart,
    pulumi.Output<String>? permissions,
    pulumi.Output<HttpProtocol>? protocols,
    pulumi.Output<String>? resource,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? rowKeyEnd,
    pulumi.Output<String>? rowKeyStart,
    pulumi.Output<String>? sharedAccessExpiryTime,
    pulumi.Output<String>? sharedAccessStartTime,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      cacheControl = pulumi.Input.asOptionalInput<String>(cacheControl),
      canonicalizedResource = pulumi.Input.asInput<String>(canonicalizedResource),
      contentDisposition = pulumi.Input.asOptionalInput<String>(contentDisposition),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      contentLanguage = pulumi.Input.asOptionalInput<String>(contentLanguage),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      iPAddressOrRange = pulumi.Input.asOptionalInput<String>(iPAddressOrRange),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      keyToSign = pulumi.Input.asOptionalInput<String>(keyToSign),
      partitionKeyEnd = pulumi.Input.asOptionalInput<String>(partitionKeyEnd),
      partitionKeyStart = pulumi.Input.asOptionalInput<String>(partitionKeyStart),
      permissions = pulumi.Input.asOptionalInput<String>(permissions),
      protocols = pulumi.Input.asOptionalInput<HttpProtocol>(protocols),
      resource = pulumi.Input.asOptionalInput<String>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rowKeyEnd = pulumi.Input.asOptionalInput<String>(rowKeyEnd),
      rowKeyStart = pulumi.Input.asOptionalInput<String>(rowKeyStart),
      sharedAccessExpiryTime = pulumi.Input.asOptionalInput<String>(sharedAccessExpiryTime),
      sharedAccessStartTime = pulumi.Input.asOptionalInput<String>(sharedAccessStartTime);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      cacheControl: map['cacheControl'] == null ? null : pulumi.Output.create<String>(map['cacheControl'] as String),
      canonicalizedResource: pulumi.Output.create<String>(map['canonicalizedResource'] as String),
      contentDisposition: map['contentDisposition'] == null ? null : pulumi.Output.create<String>(map['contentDisposition'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      contentLanguage: map['contentLanguage'] == null ? null : pulumi.Output.create<String>(map['contentLanguage'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      iPAddressOrRange: map['iPAddressOrRange'] == null ? null : pulumi.Output.create<String>(map['iPAddressOrRange'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      keyToSign: map['keyToSign'] == null ? null : pulumi.Output.create<String>(map['keyToSign'] as String),
      partitionKeyEnd: map['partitionKeyEnd'] == null ? null : pulumi.Output.create<String>(map['partitionKeyEnd'] as String),
      partitionKeyStart: map['partitionKeyStart'] == null ? null : pulumi.Output.create<String>(map['partitionKeyStart'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<String>(map['permissions'] as String),
      protocols: map['protocols'] == null ? null : pulumi.Output.create<HttpProtocol>(HttpProtocol.fromValue(map['protocols'] as String)),
      resource: map['resource'] == null ? null : pulumi.Output.create<String>(map['resource'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rowKeyEnd: map['rowKeyEnd'] == null ? null : pulumi.Output.create<String>(map['rowKeyEnd'] as String),
      rowKeyStart: map['rowKeyStart'] == null ? null : pulumi.Output.create<String>(map['rowKeyStart'] as String),
      sharedAccessExpiryTime: map['sharedAccessExpiryTime'] == null ? null : pulumi.Output.create<String>(map['sharedAccessExpiryTime'] as String),
      sharedAccessStartTime: map['sharedAccessStartTime'] == null ? null : pulumi.Output.create<String>(map['sharedAccessStartTime'] as String),
    );
  }
}

