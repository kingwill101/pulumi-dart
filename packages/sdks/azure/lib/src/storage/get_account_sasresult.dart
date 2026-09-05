// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_saspermissions.dart';
import 'get_account_sasresource_types.dart';
import 'get_account_sasservices.dart';

/// Result data returned by getAccountSAS.
class GetAccountSASResult {
  final String? connectionString;
  final String? expiry;
  final bool? httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipAddresses;
  final GetAccountSASPermissions? permissions;
  final GetAccountSASResourceTypes? resourceTypes;
  /// The computed Account Shared Access Signature (SAS).
  final String? sas;
  final GetAccountSASServices? services;
  final String? signedVersion;
  final String? start;

  /// Creates a new [GetAccountSASResult].
  /// [connectionString] Optional.
  /// [expiry] Optional.
  /// [httpsOnly] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddresses] Optional.
  /// [permissions] Optional.
  /// [resourceTypes] Optional.
  /// [sas] The computed Account Shared Access Signature (SAS).
  /// [services] Optional.
  /// [signedVersion] Optional.
  /// [start] Optional.
  const GetAccountSASResult({
    this.connectionString,
    this.expiry,
    this.httpsOnly,
    this.id,
    this.ipAddresses,
    this.permissions,
    this.resourceTypes,
    this.sas,
    this.services,
    this.signedVersion,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'expiry': ?expiry,
      'httpsOnly': ?httpsOnly,
      'id': ?id,
      'ipAddresses': ?ipAddresses,
      'permissions': ?permissions?.toMap(),
      'resourceTypes': ?resourceTypes?.toMap(),
      'sas': ?sas,
      'services': ?services?.toMap(),
      'signedVersion': ?signedVersion,
      'start': ?start,
    };
  }

  factory GetAccountSASResult.fromMap(Map<String, dynamic> map) {
    return GetAccountSASResult(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return GetAccountSASPermissions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return GetAccountSASResourceTypes.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sas: (() { final guardedValue = map['sas']; if (guardedValue == null) return null; return guardedValue as String; })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return GetAccountSASServices.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      signedVersion: (() { final guardedValue = map['signedVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
