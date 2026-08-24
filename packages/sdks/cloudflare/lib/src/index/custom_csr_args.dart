// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_custom_csr_custom_csr_args_doc}
/// The set of arguments for CustomCsr.
/// {@endtemplate}
/// {@macro pulumi_index_custom_csr_custom_csr_args_doc}
class CustomCsrArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The common name (domain) for the CSR. Must be at most 64 characters.
  final pulumi.Input<String> commonName;
  /// Two-letter ISO 3166-1 alpha-2 country code.
  final pulumi.Input<String> country;
  /// Optional description for the CSR.
  final pulumi.Input<String?>? description;
  /// Key algorithm to use for the CSR. Defaults to rsa2048 if not specified.
  /// Available values: "rsa2048", "p256v1".
  final pulumi.Input<String?>? keyType;
  /// City or locality name.
  final pulumi.Input<String> locality;
  /// Human-readable name for the CSR.
  final pulumi.Input<String?>? name;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Organizational unit name.
  final pulumi.Input<String?>? organizationalUnit;
  /// Subject Alternative Names for the CSR. At least one SAN is required.
  final pulumi.Input<List<String>> sans;
  /// State or province name.
  final pulumi.Input<String> state;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomCsrArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [commonName] The common name (domain) for the CSR. Must be at most 64 characters.
  /// [country] Two-letter ISO 3166-1 alpha-2 country code.
  /// [description] Optional description for the CSR.
  /// [keyType] Key algorithm to use for the CSR. Defaults to rsa2048 if not specified.
  /// [locality] City or locality name.
  /// [name] Human-readable name for the CSR.
  /// [organization] Organization name.
  /// [organizationalUnit] Organizational unit name.
  /// [sans] Subject Alternative Names for the CSR. At least one SAN is required.
  /// [state] State or province name.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const CustomCsrArgs({
    this.accountId,
    required this.commonName,
    required this.country,
    this.description,
    this.keyType,
    required this.locality,
    this.name,
    required this.organization,
    this.organizationalUnit,
    required this.sans,
    required this.state,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'commonName': commonName,
      'country': country,
      'description': ?description,
      'keyType': ?keyType,
      'locality': locality,
      'name': ?name,
      'organization': organization,
      'organizationalUnit': ?organizationalUnit,
      'sans': sans,
      'state': state,
      'zoneId': ?zoneId,
    };
  }

  factory CustomCsrArgs.fromMap(Map<String, dynamic> map) {
    return CustomCsrArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
      country: pulumi.Input.fromValue(map['country'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locality: pulumi.Input.fromValue(map['locality'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sans: pulumi.Input.fromValue((map['sans'] as List).cast<String>()),
      state: pulumi.Input.fromValue(map['state'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
