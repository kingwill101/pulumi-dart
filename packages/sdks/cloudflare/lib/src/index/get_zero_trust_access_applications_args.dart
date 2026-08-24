// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_applications_get_zero_trust_access_applications_args_doc}
/// Arguments for getZeroTrustAccessApplications.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_applications_get_zero_trust_access_applications_args_doc}
class GetZeroTrustAccessApplicationsArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The aud of the app.
  final pulumi.Input<String?>? aud;
  /// The domain of the app.
  final pulumi.Input<String?>? domain;
  /// True for only exact string matches against passed name/domain query parameters.
  final pulumi.Input<bool?>? exact;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The name of the app.
  final pulumi.Input<String?>? name;
  /// Search for apps by other listed query parameters.
  final pulumi.Input<String?>? search;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustAccessApplicationsArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [aud] The aud of the app.
  /// [domain] The domain of the app.
  /// [exact] True for only exact string matches against passed name/domain query parameters.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] The name of the app.
  /// [search] Search for apps by other listed query parameters.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessApplicationsArgs({
    this.accountId,
    this.aud,
    this.domain,
    this.exact,
    this.maxItems,
    this.name,
    this.search,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aud': ?aud,
      'domain': ?domain,
      'exact': ?exact,
      'maxItems': ?maxItems,
      'name': ?name,
      'search': ?search,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aud: (() { final guardedValue = map['aud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
