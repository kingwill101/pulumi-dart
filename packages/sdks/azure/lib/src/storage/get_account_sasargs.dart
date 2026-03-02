// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_saspermissions.dart';
import 'get_account_sasresource_types.dart';
import 'get_account_sasservices.dart';

/// {@template pulumi_storage_get_account_sas_get_account_sasargs_doc}
/// Arguments for getAccountSAS.
/// {@endtemplate}
/// {@macro pulumi_storage_get_account_sas_get_account_sasargs_doc}
class GetAccountSASArgs {
  /// The connection string for the storage account to which this SAS applies. Typically directly from the `primary_connection_string` attribute of a `azure.storage.Account` resource.
  final pulumi.Input<String> connectionString;
  /// The expiration time and date of this SAS. Must be a valid ISO-8601 format time/date string.
  ///
  /// > **Note:** The [ISO-8601 Time offset from UTC](https://en.wikipedia.org/wiki/ISO_8601#Time_offsets_from_UTC) is currently not supported by the service, which will result into 409 error.
  final pulumi.Input<String> expiry;
  /// Only permit `https` access. If `false`, both `http` and `https` are permitted. Defaults to `true`.
  final pulumi.Input<bool>? httpsOnly;
  /// IP address, or a range of IP addresses, from which to accept requests. When specifying a range, note that the range is inclusive.
  final pulumi.Input<String>? ipAddresses;
  /// A `permissions` block as defined below.
  final pulumi.Input<GetAccountSASPermissions> permissions;
  /// A `resource_types` block as defined below.
  final pulumi.Input<GetAccountSASResourceTypes> resourceTypes;
  /// A `services` block as defined below.
  final pulumi.Input<GetAccountSASServices> services;
  /// Specifies the signed storage service version to use to authorize requests made with this account SAS. Defaults to `2022-11-02`.
  final pulumi.Input<String>? signedVersion;
  /// The starting time and date of validity of this SAS. Must be a valid ISO-8601 format time/date string.
  final pulumi.Input<String> start;

  /// Creates a new [GetAccountSASArgs].
  /// [connectionString] The connection string for the storage account to which this SAS applies. Typically directly from the `primary_connection_string` attribute of a `azure.storage.Account` resource.
  /// [expiry] The expiration time and date of this SAS. Must be a valid ISO-8601 format time/date string.
  /// [httpsOnly] Only permit `https` access. If `false`, both `http` and `https` are permitted. Defaults to `true`.
  /// [ipAddresses] IP address, or a range of IP addresses, from which to accept requests. When specifying a range, note that the range is inclusive.
  /// [permissions] A `permissions` block as defined below.
  /// [resourceTypes] A `resource_types` block as defined below.
  /// [services] A `services` block as defined below.
  /// [signedVersion] Specifies the signed storage service version to use to authorize requests made with this account SAS. Defaults to `2022-11-02`.
  /// [start] The starting time and date of validity of this SAS. Must be a valid ISO-8601 format time/date string.
  GetAccountSASArgs({
    required this.connectionString,
    required this.expiry,
    this.httpsOnly,
    this.ipAddresses,
    required this.permissions,
    required this.resourceTypes,
    required this.services,
    this.signedVersion,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'expiry': expiry,
      'httpsOnly': ?httpsOnly,
      'ipAddresses': ?ipAddresses,
      'permissions': pulumi.Input.mapInputValue<GetAccountSASPermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'resourceTypes': pulumi.Input.mapInputValue<GetAccountSASResourceTypes, Map<String, dynamic>>(resourceTypes, (value) => value.toMap()),
      'services': pulumi.Input.mapInputValue<GetAccountSASServices, Map<String, dynamic>>(services, (value) => value.toMap()),
      'signedVersion': ?signedVersion,
      'start': start,
    };
  }

  factory GetAccountSASArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountSASArgs(
      connectionString: (map['connectionString'] as String).input(),
      expiry: (map['expiry'] as String).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly'] as bool).input(),
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as String).input(),
      permissions: (GetAccountSASPermissions.fromMap((map['permissions'] as Map).cast<String, dynamic>())).input(),
      resourceTypes: (GetAccountSASResourceTypes.fromMap((map['resourceTypes'] as Map).cast<String, dynamic>())).input(),
      services: (GetAccountSASServices.fromMap((map['services'] as Map).cast<String, dynamic>())).input(),
      signedVersion: map['signedVersion'] == null ? null : (map['signedVersion'] as String).input(),
      start: (map['start'] as String).input(),
    );
  }
}

