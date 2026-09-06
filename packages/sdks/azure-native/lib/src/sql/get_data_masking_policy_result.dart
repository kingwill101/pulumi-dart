// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataMaskingPolicy.
class GetDataMaskingPolicyResult {
  /// The list of the application principals. This is a legacy parameter and is no longer used.
  final String? applicationPrincipals;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The state of the data masking policy.
  final String? dataMaskingState;
  /// The list of the exempt principals. Specifies the semicolon-separated list of database users for which the data masking policy does not apply. The specified users receive data results without masking for all of the database queries.
  final String? exemptPrincipals;
  /// Resource ID.
  final String? id;
  /// The kind of Data Masking Policy. Metadata, used for Azure portal.
  final String? kind;
  /// The location of the data masking policy.
  final String? location;
  /// The masking level. This is a legacy parameter and is no longer used.
  final String? maskingLevel;
  /// Resource name.
  final String? name;
  /// Resource type.
  final String? type;

  /// Creates a new [GetDataMaskingPolicyResult].
  /// [applicationPrincipals] The list of the application principals. This is a legacy parameter and is no longer used.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataMaskingState] The state of the data masking policy.
  /// [exemptPrincipals] The list of the exempt principals. Specifies the semicolon-separated list of database users for which the data masking policy does not apply. The specified users receive data results without masking for all of the database queries.
  /// [id] Resource ID.
  /// [kind] The kind of Data Masking Policy. Metadata, used for Azure portal.
  /// [location] The location of the data masking policy.
  /// [maskingLevel] The masking level. This is a legacy parameter and is no longer used.
  /// [name] Resource name.
  /// [type] Resource type.
  const GetDataMaskingPolicyResult({
    this.applicationPrincipals,
    this.azureApiVersion,
    this.dataMaskingState,
    this.exemptPrincipals,
    this.id,
    this.kind,
    this.location,
    this.maskingLevel,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationPrincipals': ?applicationPrincipals,
      'azureApiVersion': ?azureApiVersion,
      'dataMaskingState': ?dataMaskingState,
      'exemptPrincipals': ?exemptPrincipals,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'maskingLevel': ?maskingLevel,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetDataMaskingPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDataMaskingPolicyResult(
      applicationPrincipals: (() { final guardedValue = map['applicationPrincipals']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataMaskingState: (() { final guardedValue = map['dataMaskingState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exemptPrincipals: (() { final guardedValue = map['exemptPrincipals']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maskingLevel: (() { final guardedValue = map['maskingLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
