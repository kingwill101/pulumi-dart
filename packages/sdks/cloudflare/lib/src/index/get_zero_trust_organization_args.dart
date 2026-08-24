// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_organization_get_zero_trust_organization_args_doc}
/// Arguments for getZeroTrustOrganization.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_organization_get_zero_trust_organization_args_doc}
class GetZeroTrustOrganizationArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustOrganizationArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustOrganizationArgs({
    this.accountId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustOrganizationArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
