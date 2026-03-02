// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_blob_container_saspermissions.dart';

/// Result data returned by getAccountBlobContainerSAS.
class GetAccountBlobContainerSASResult {
  final String? cacheControl;
  final String connectionString;
  final String containerName;
  final String? contentDisposition;
  final String? contentEncoding;
  final String? contentLanguage;
  final String? contentType;
  final String expiry;
  final bool? httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? ipAddress;
  final GetAccountBlobContainerSASPermissions permissions;
  /// The computed Blob Container Shared Access Signature (SAS). The delimiter character ('?') for the query string is the prefix of `sas`.
  final String sas;
  final String start;

  /// Creates a new [GetAccountBlobContainerSASResult].
  /// [cacheControl] Optional.
  /// [connectionString] Required.
  /// [containerName] Required.
  /// [contentDisposition] Optional.
  /// [contentEncoding] Optional.
  /// [contentLanguage] Optional.
  /// [contentType] Optional.
  /// [expiry] Required.
  /// [httpsOnly] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Optional.
  /// [permissions] Required.
  /// [sas] The computed Blob Container Shared Access Signature (SAS). The delimiter character ('?') for the query string is the prefix of `sas`.
  /// [start] Required.
  GetAccountBlobContainerSASResult({
    this.cacheControl,
    required this.connectionString,
    required this.containerName,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    required this.expiry,
    this.httpsOnly,
    required this.id,
    this.ipAddress,
    required this.permissions,
    required this.sas,
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
      'id': id,
      'ipAddress': ?ipAddress,
      'permissions': permissions.toMap(),
      'sas': sas,
      'start': start,
    };
  }

  factory GetAccountBlobContainerSASResult.fromMap(Map<String, dynamic> map) {
    return GetAccountBlobContainerSASResult(
      cacheControl: map['cacheControl'] == null ? null : map['cacheControl']! as String,
      connectionString: map['connectionString'] as String,
      containerName: map['containerName'] as String,
      contentDisposition: map['contentDisposition'] == null ? null : map['contentDisposition']! as String,
      contentEncoding: map['contentEncoding'] == null ? null : map['contentEncoding']! as String,
      contentLanguage: map['contentLanguage'] == null ? null : map['contentLanguage']! as String,
      contentType: map['contentType'] == null ? null : map['contentType']! as String,
      expiry: map['expiry'] as String,
      httpsOnly: map['httpsOnly'] == null ? null : map['httpsOnly']! as bool,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress']! as String,
      permissions: GetAccountBlobContainerSASPermissions.fromMap((map['permissions'] as Map).cast<String, dynamic>()),
      sas: map['sas'] as String,
      start: map['start'] as String,
    );
  }
}

