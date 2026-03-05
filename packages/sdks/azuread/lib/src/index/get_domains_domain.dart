// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomain {
  /// Set to `true` to only return domains whose DNS is managed by Microsoft 365. Defaults to `false`.
  final pulumi.Input<bool> adminManaged;
  /// The authentication type of the domain. Possible values include `Managed` or `Federated`.
  final pulumi.Input<String> authenticationType;
  /// Whether this is the default domain that is used for user creation.
  final pulumi.Input<bool> default_;
  /// The name of the domain.
  final pulumi.Input<String> domainName;
  /// Whether this is the initial domain created by Azure Active Directory.
  final pulumi.Input<bool> initial;
  /// Whether the domain is a verified root domain (not a subdomain).
  final pulumi.Input<bool> root;
  /// A list of capabilities / services supported by the domain. Possible values include `Email`, `Sharepoint`, `EmailInternalRelayOnly`, `OfficeCommunicationsOnline`, `SharePointDefaultDomain`, `FullRedelegation`, `SharePointPublic`, `OrgIdAuthentication`, `Yammer` and `Intune`.
  final pulumi.Input<List<String>> supportedServices;
  /// Whether the domain has completed domain ownership verification.
  final pulumi.Input<bool> verified;

  /// Creates a new [GetDomainsDomain].
  /// [adminManaged] Set to `true` to only return domains whose DNS is managed by Microsoft 365. Defaults to `false`.
  /// [authenticationType] The authentication type of the domain. Possible values include `Managed` or `Federated`.
  /// [default_] Whether this is the default domain that is used for user creation.
  /// [domainName] The name of the domain.
  /// [initial] Whether this is the initial domain created by Azure Active Directory.
  /// [root] Whether the domain is a verified root domain (not a subdomain).
  /// [supportedServices] A list of capabilities / services supported by the domain. Possible values include `Email`, `Sharepoint`, `EmailInternalRelayOnly`, `OfficeCommunicationsOnline`, `SharePointDefaultDomain`, `FullRedelegation`, `SharePointPublic`, `OrgIdAuthentication`, `Yammer` and `Intune`.
  /// [verified] Whether the domain has completed domain ownership verification.
  GetDomainsDomain({
    required this.adminManaged,
    required this.authenticationType,
    required this.default_,
    required this.domainName,
    required this.initial,
    required this.root,
    required this.supportedServices,
    required this.verified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminManaged': adminManaged,
      'authenticationType': authenticationType,
      'default': default_,
      'domainName': domainName,
      'initial': initial,
      'root': root,
      'supportedServices': supportedServices,
      'verified': verified,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      adminManaged: pulumi.Input.fromValue(map['adminManaged'] as bool),
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      default_: pulumi.Input.fromValue(map['default'] as bool),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      initial: pulumi.Input.fromValue(map['initial'] as bool),
      root: pulumi.Input.fromValue(map['root'] as bool),
      supportedServices: pulumi.Input.fromValue((map['supportedServices'] as List).cast<String>()),
      verified: pulumi.Input.fromValue(map['verified'] as bool),
    );
  }
}

