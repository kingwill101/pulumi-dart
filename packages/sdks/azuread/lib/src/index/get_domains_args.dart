// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_index_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  /// Set to `true` to only return domains whose DNS is managed by Microsoft 365. Defaults to `false`.
  final pulumi.Input<bool>? adminManaged;

  /// Set to `true` if unverified Azure AD domains should be included. Defaults to `false`.
  final pulumi.Input<bool>? includeUnverified;

  /// Set to `true` to only return the default domain.
  final pulumi.Input<bool>? onlyDefault;

  /// Set to `true` to only return the initial domain, which is your primary Azure Active Directory tenant domain. Defaults to `false`.
  final pulumi.Input<bool>? onlyInitial;

  /// Set to `true` to only return verified root domains. Excludes subdomains and unverified domains.
  final pulumi.Input<bool>? onlyRoot;

  /// A list of supported services that must be supported by a domain. Possible values include `Email`, `Sharepoint`, `EmailInternalRelayOnly`, `OfficeCommunicationsOnline`, `SharePointDefaultDomain`, `FullRedelegation`, `SharePointPublic`, `OrgIdAuthentication`, `Yammer` and `Intune`.
  ///
  /// &gt; **Note on filters** If `include_unverified` is set to `true`, you cannot specify `only_default` or `only_initial`. Additionally, you cannot combine `only_default` with `only_initial`.
  final pulumi.Input<List<String>>? supportsServices;

  /// Creates a new [GetDomainsArgs].
  /// [adminManaged] Set to `true` to only return domains whose DNS is managed by Microsoft 365. Defaults to `false`.
  /// [includeUnverified] Set to `true` if unverified Azure AD domains should be included. Defaults to `false`.
  /// [onlyDefault] Set to `true` to only return the default domain.
  /// [onlyInitial] Set to `true` to only return the initial domain, which is your primary Azure Active Directory tenant domain. Defaults to `false`.
  /// [onlyRoot] Set to `true` to only return verified root domains. Excludes subdomains and unverified domains.
  /// [supportsServices] A list of supported services that must be supported by a domain. Possible values include `Email`, `Sharepoint`, `EmailInternalRelayOnly`, `OfficeCommunicationsOnline`, `SharePointDefaultDomain`, `FullRedelegation`, `SharePointPublic`, `OrgIdAuthentication`, `Yammer` and `Intune`.
  GetDomainsArgs({
    this.adminManaged,
    this.includeUnverified,
    this.onlyDefault,
    this.onlyInitial,
    this.onlyRoot,
    this.supportsServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminManaged': ?adminManaged,
      'includeUnverified': ?includeUnverified,
      'onlyDefault': ?onlyDefault,
      'onlyInitial': ?onlyInitial,
      'onlyRoot': ?onlyRoot,
      'supportsServices': ?supportsServices,
    };
  }

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      adminManaged: (() {
        final guardedValue = map['adminManaged'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeUnverified: (() {
        final guardedValue = map['includeUnverified'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      onlyDefault: (() {
        final guardedValue = map['onlyDefault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      onlyInitial: (() {
        final guardedValue = map['onlyInitial'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      onlyRoot: (() {
        final guardedValue = map['onlyRoot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      supportsServices: (() {
        final guardedValue = map['supportsServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
