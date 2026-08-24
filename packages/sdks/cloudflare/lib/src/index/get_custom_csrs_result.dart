// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomCsrsResult {
  /// Account identifier associated with this CSR.
  final pulumi.Input<String> accountTag;
  /// The common name (domain) for the CSR.
  final pulumi.Input<String> commonName;
  /// Two-letter ISO 3166-1 alpha-2 country code.
  final pulumi.Input<String> country;
  /// When the CSR was created.
  final pulumi.Input<String> createdAt;
  /// The PEM-encoded Certificate Signing Request.
  final pulumi.Input<String> csr;
  /// Optional description for the CSR.
  final pulumi.Input<String> description;
  /// Custom CSR identifier tag.
  final pulumi.Input<String> id;
  /// The key algorithm used to generate the CSR.
  /// Available values: "rsa2048", "p256v1".
  final pulumi.Input<String> keyType;
  /// City or locality name.
  final pulumi.Input<String> locality;
  /// Human-readable name for the CSR.
  final pulumi.Input<String> name;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Organizational unit name.
  final pulumi.Input<String> organizationalUnit;
  /// Subject Alternative Names included in the CSR.
  final pulumi.Input<List<String>> sans;
  /// State or province name.
  final pulumi.Input<String> state;

  /// Creates a new [GetCustomCsrsResult].
  /// [accountTag] Account identifier associated with this CSR.
  /// [commonName] The common name (domain) for the CSR.
  /// [country] Two-letter ISO 3166-1 alpha-2 country code.
  /// [createdAt] When the CSR was created.
  /// [csr] The PEM-encoded Certificate Signing Request.
  /// [description] Optional description for the CSR.
  /// [id] Custom CSR identifier tag.
  /// [keyType] The key algorithm used to generate the CSR.
  /// [locality] City or locality name.
  /// [name] Human-readable name for the CSR.
  /// [organization] Organization name.
  /// [organizationalUnit] Organizational unit name.
  /// [sans] Subject Alternative Names included in the CSR.
  /// [state] State or province name.
  const GetCustomCsrsResult({
    required this.accountTag,
    required this.commonName,
    required this.country,
    required this.createdAt,
    required this.csr,
    required this.description,
    required this.id,
    required this.keyType,
    required this.locality,
    required this.name,
    required this.organization,
    required this.organizationalUnit,
    required this.sans,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountTag': accountTag,
      'commonName': commonName,
      'country': country,
      'createdAt': createdAt,
      'csr': csr,
      'description': description,
      'id': id,
      'keyType': keyType,
      'locality': locality,
      'name': name,
      'organization': organization,
      'organizationalUnit': organizationalUnit,
      'sans': sans,
      'state': state,
    };
  }

  factory GetCustomCsrsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomCsrsResult(
      accountTag: pulumi.Input.fromValue(map['accountTag'] as String),
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
      country: pulumi.Input.fromValue(map['country'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      csr: pulumi.Input.fromValue(map['csr'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
      locality: pulumi.Input.fromValue(map['locality'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      organizationalUnit: pulumi.Input.fromValue(map['organizationalUnit'] as String),
      sans: pulumi.Input.fromValue((map['sans'] as List).cast<String>()),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
