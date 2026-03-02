// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_blob_container_saspermissions.dart';

/// {@template pulumi_storage_get_account_blob_container_sas_get_account_blob_container_sasargs_doc}
/// Arguments for getAccountBlobContainerSAS.
/// {@endtemplate}
/// {@macro pulumi_storage_get_account_blob_container_sas_get_account_blob_container_sasargs_doc}
class GetAccountBlobContainerSASArgs {
  /// The `Cache-Control` response header that is sent when this SAS token is used.
  final pulumi.Input<String>? cacheControl;
  /// The connection string for the storage account to which this SAS applies. Typically directly from the `primary_connection_string` attribute of an `azure.storage.Account` resource.
  final pulumi.Input<String> connectionString;
  /// Name of the container.
  final pulumi.Input<String> containerName;
  /// The `Content-Disposition` response header that is sent when this SAS token is used.
  final pulumi.Input<String>? contentDisposition;
  /// The `Content-Encoding` response header that is sent when this SAS token is used.
  final pulumi.Input<String>? contentEncoding;
  /// The `Content-Language` response header that is sent when this SAS token is used.
  final pulumi.Input<String>? contentLanguage;
  /// The `Content-Type` response header that is sent when this SAS token is used.
  final pulumi.Input<String>? contentType;
  /// The expiration time and date of this SAS. Must be a valid ISO-8601 format time/date string.
  ///
  /// > **Note:** The [ISO-8601 Time offset from UTC](https://en.wikipedia.org/wiki/ISO_8601#Time_offsets_from_UTC) is currently not supported by the service, which will result into 409 error.
  final pulumi.Input<String> expiry;
  /// Only permit `https` access. If `false`, both `http` and `https` are permitted. Defaults to `true`.
  final pulumi.Input<bool>? httpsOnly;
  /// Single IPv4 address or range (connected with a dash) of IPv4 addresses.
  final pulumi.Input<String>? ipAddress;
  /// A `permissions` block as defined below.
  final pulumi.Input<GetAccountBlobContainerSASPermissions> permissions;
  /// The starting time and date of validity of this SAS. Must be a valid ISO-8601 format time/date string.
  final pulumi.Input<String> start;

  /// Creates a new [GetAccountBlobContainerSASArgs].
  /// [cacheControl] The `Cache-Control` response header that is sent when this SAS token is used.
  /// [connectionString] The connection string for the storage account to which this SAS applies. Typically directly from the `primary_connection_string` attribute of an `azure.storage.Account` resource.
  /// [containerName] Name of the container.
  /// [contentDisposition] The `Content-Disposition` response header that is sent when this SAS token is used.
  /// [contentEncoding] The `Content-Encoding` response header that is sent when this SAS token is used.
  /// [contentLanguage] The `Content-Language` response header that is sent when this SAS token is used.
  /// [contentType] The `Content-Type` response header that is sent when this SAS token is used.
  /// [expiry] The expiration time and date of this SAS. Must be a valid ISO-8601 format time/date string.
  /// [httpsOnly] Only permit `https` access. If `false`, both `http` and `https` are permitted. Defaults to `true`.
  /// [ipAddress] Single IPv4 address or range (connected with a dash) of IPv4 addresses.
  /// [permissions] A `permissions` block as defined below.
  /// [start] The starting time and date of validity of this SAS. Must be a valid ISO-8601 format time/date string.
  GetAccountBlobContainerSASArgs({
    this.cacheControl,
    required this.connectionString,
    required this.containerName,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    required this.expiry,
    this.httpsOnly,
    this.ipAddress,
    required this.permissions,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheControl': ?cacheControl,
      'connectionString': connectionString,
      'containerName': containerName,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'expiry': expiry,
      'httpsOnly': ?httpsOnly,
      'ipAddress': ?ipAddress,
      'permissions': pulumi.Input.mapInputValue<GetAccountBlobContainerSASPermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'start': start,
    };
  }

  factory GetAccountBlobContainerSASArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountBlobContainerSASArgs(
      cacheControl: map['cacheControl'] == null ? null : (map['cacheControl'] as String).input(),
      connectionString: (map['connectionString'] as String).input(),
      containerName: (map['containerName'] as String).input(),
      contentDisposition: map['contentDisposition'] == null ? null : (map['contentDisposition'] as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding'] as String).input(),
      contentLanguage: map['contentLanguage'] == null ? null : (map['contentLanguage'] as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      expiry: (map['expiry'] as String).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly'] as bool).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      permissions: (GetAccountBlobContainerSASPermissions.fromMap((map['permissions'] as Map).cast<String, dynamic>())).input(),
      start: (map['start'] as String).input(),
    );
  }
}

