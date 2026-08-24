// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomCsr.
class GetCustomCsrResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// Account identifier associated with this CSR.
  final String? accountTag;
  /// The common name (domain) for the CSR.
  final String? commonName;
  /// Two-letter ISO 3166-1 alpha-2 country code.
  final String? country;
  /// When the CSR was created.
  final String? createdAt;
  /// The PEM-encoded Certificate Signing Request.
  final String? csr;
  /// Custom CSR identifier tag.
  final String? customCsrId;
  /// Optional description for the CSR.
  final String? description;
  final Map<String, dynamic>? filter;
  /// Custom CSR identifier tag.
  final String? id;
  /// The key algorithm used to generate the CSR.
  /// Available values: "rsa2048", "p256v1".
  final String? keyType;
  /// City or locality name.
  final String? locality;
  /// Human-readable name for the CSR.
  final String? name;
  /// Organization name.
  final String? organization;
  /// Organizational unit name.
  final String? organizationalUnit;
  /// Subject Alternative Names included in the CSR.
  final List<String>? sans;
  /// State or province name.
  final String? state;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetCustomCsrResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [accountTag] Account identifier associated with this CSR.
  /// [commonName] The common name (domain) for the CSR.
  /// [country] Two-letter ISO 3166-1 alpha-2 country code.
  /// [createdAt] When the CSR was created.
  /// [csr] The PEM-encoded Certificate Signing Request.
  /// [customCsrId] Custom CSR identifier tag.
  /// [description] Optional description for the CSR.
  /// [filter] Optional.
  /// [id] Custom CSR identifier tag.
  /// [keyType] The key algorithm used to generate the CSR.
  /// [locality] City or locality name.
  /// [name] Human-readable name for the CSR.
  /// [organization] Organization name.
  /// [organizationalUnit] Organizational unit name.
  /// [sans] Subject Alternative Names included in the CSR.
  /// [state] State or province name.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetCustomCsrResult({
    this.accountId,
    this.accountTag,
    this.commonName,
    this.country,
    this.createdAt,
    this.csr,
    this.customCsrId,
    this.description,
    this.filter,
    this.id,
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
      'customCsrId': ?customCsrId,
      'description': ?description,
      'filter': ?filter,
      'id': ?id,
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

  factory GetCustomCsrResult.fromMap(Map<String, dynamic> map) {
    return GetCustomCsrResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountTag: (() { final guardedValue = map['accountTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customCsrId: (() { final guardedValue = map['customCsrId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locality: (() { final guardedValue = map['locality']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sans: (() { final guardedValue = map['sans']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
