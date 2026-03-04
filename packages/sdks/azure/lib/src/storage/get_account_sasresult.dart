// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_saspermissions.dart';
import 'get_account_sasresource_types.dart';
import 'get_account_sasservices.dart';

/// Result data returned by getAccountSAS.
class GetAccountSASResult {
  final String connectionString;
  final String expiry;
  final bool? httpsOnly;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? ipAddresses;
  final GetAccountSASPermissions permissions;
  final GetAccountSASResourceTypes resourceTypes;

  /// The computed Account Shared Access Signature (SAS).
  final String sas;
  final GetAccountSASServices services;
  final String? signedVersion;
  final String start;

  /// Creates a new [GetAccountSASResult].
  /// [connectionString] Required.
  /// [expiry] Required.
  /// [httpsOnly] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddresses] Optional.
  /// [permissions] Required.
  /// [resourceTypes] Required.
  /// [sas] The computed Account Shared Access Signature (SAS).
  /// [services] Required.
  /// [signedVersion] Optional.
  /// [start] Required.
  GetAccountSASResult({
    required this.connectionString,
    required this.expiry,
    this.httpsOnly,
    required this.id,
    this.ipAddresses,
    required this.permissions,
    required this.resourceTypes,
    required this.sas,
    required this.services,
    this.signedVersion,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'expiry': expiry,
      'httpsOnly': ?httpsOnly,
      'id': id,
      'ipAddresses': ?ipAddresses,
      'permissions': permissions.toMap(),
      'resourceTypes': resourceTypes.toMap(),
      'sas': sas,
      'services': services.toMap(),
      'signedVersion': ?signedVersion,
      'start': start,
    };
  }

  factory GetAccountSASResult.fromMap(Map<String, dynamic> map) {
    return GetAccountSASResult(
      connectionString: map['connectionString'] as String,
      expiry: map['expiry'] as String,
      httpsOnly: (() {
        final guardedValue = map['httpsOnly'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ipAddresses: (() {
        final guardedValue = map['ipAddresses'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      permissions: GetAccountSASPermissions.fromMap(
        (map['permissions']! as Map).cast<String, dynamic>(),
      ),
      resourceTypes: GetAccountSASResourceTypes.fromMap(
        (map['resourceTypes']! as Map).cast<String, dynamic>(),
      ),
      sas: map['sas'] as String,
      services: GetAccountSASServices.fromMap(
        (map['services']! as Map).cast<String, dynamic>(),
      ),
      signedVersion: (() {
        final guardedValue = map['signedVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      start: map['start'] as String,
    );
  }
}
