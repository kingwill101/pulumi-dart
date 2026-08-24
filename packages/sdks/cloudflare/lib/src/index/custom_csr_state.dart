// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomCsr resources.
class CustomCsrState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Account identifier associated with this CSR.
  final pulumi.Input<String?>? accountTag;
  /// The common name (domain) for the CSR. Must be at most 64 characters.
  final pulumi.Input<String?>? commonName;
  /// Two-letter ISO 3166-1 alpha-2 country code.
  final pulumi.Input<String?>? country;
  /// When the CSR was created.
  final pulumi.Input<String?>? createdAt;
  /// The PEM-encoded Certificate Signing Request.
  final pulumi.Input<String?>? csr;
  /// Optional description for the CSR.
  final pulumi.Input<String?>? description;
  /// Key algorithm to use for the CSR. Defaults to rsa2048 if not specified.
  /// Available values: "rsa2048", "p256v1".
  final pulumi.Input<String?>? keyType;
  /// City or locality name.
  final pulumi.Input<String?>? locality;
  /// Human-readable name for the CSR.
  final pulumi.Input<String?>? name;
  /// Organization name.
  final pulumi.Input<String?>? organization;
  /// Organizational unit name.
  final pulumi.Input<String?>? organizationalUnit;
  /// Subject Alternative Names for the CSR. At least one SAN is required.
  final pulumi.Input<List<String>?>? sans;
  /// State or province name.
  final pulumi.Input<String?>? state;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomCsrState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [accountTag] Account identifier associated with this CSR.
  /// [commonName] The common name (domain) for the CSR. Must be at most 64 characters.
  /// [country] Two-letter ISO 3166-1 alpha-2 country code.
  /// [createdAt] When the CSR was created.
  /// [csr] The PEM-encoded Certificate Signing Request.
  /// [description] Optional description for the CSR.
  /// [keyType] Key algorithm to use for the CSR. Defaults to rsa2048 if not specified.
  /// [locality] City or locality name.
  /// [name] Human-readable name for the CSR.
  /// [organization] Organization name.
  /// [organizationalUnit] Organizational unit name.
  /// [sans] Subject Alternative Names for the CSR. At least one SAN is required.
  /// [state] State or province name.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const CustomCsrState({
    this.accountId,
    this.accountTag,
    this.commonName,
    this.country,
    this.createdAt,
    this.csr,
    this.description,
    this.keyType,
    this.locality,
    this.name,
    this.organization,
    this.organizationalUnit,
    this.sans,
    this.state,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountTag': ?accountTag,
      'commonName': ?commonName,
      'country': ?country,
      'createdAt': ?createdAt,
      'csr': ?csr,
      'description': ?description,
      'keyType': ?keyType,
      'locality': ?locality,
      'name': ?name,
      'organization': ?organization,
      'organizationalUnit': ?organizationalUnit,
      'sans': ?sans,
      'state': ?state,
      'zoneId': ?zoneId,
    };
  }

  factory CustomCsrState.fromMap(Map<String, dynamic> map) {
    return CustomCsrState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountTag: (() { final guardedValue = map['accountTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locality: (() { final guardedValue = map['locality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sans: (() { final guardedValue = map['sans']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
