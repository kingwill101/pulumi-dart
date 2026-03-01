// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataMaskingPolicy.
class GetDataMaskingPolicyResult {
  /// The list of the application principals. This is a legacy parameter and is no longer used.
  final String applicationPrincipals;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The state of the data masking policy.
  final String dataMaskingState;
  /// The list of the exempt principals. Specifies the semicolon-separated list of database users for which the data masking policy does not apply. The specified users receive data results without masking for all of the database queries.
  final String? exemptPrincipals;
  /// Resource ID.
  final String id;
  /// The kind of Data Masking Policy. Metadata, used for Azure portal.
  final String kind;
  /// The location of the data masking policy.
  final String location;
  /// The masking level. This is a legacy parameter and is no longer used.
  final String maskingLevel;
  /// Resource name.
  final String name;
  /// Resource type.
  final String type;

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
  GetDataMaskingPolicyResult({
    required this.applicationPrincipals,
    required this.azureApiVersion,
    required this.dataMaskingState,
    this.exemptPrincipals,
    required this.id,
    required this.kind,
    required this.location,
    required this.maskingLevel,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationPrincipals': applicationPrincipals,
      'azureApiVersion': azureApiVersion,
      'dataMaskingState': dataMaskingState,
      'exemptPrincipals': ?exemptPrincipals,
      'id': id,
      'kind': kind,
      'location': location,
      'maskingLevel': maskingLevel,
      'name': name,
      'type': type,
    };
  }

  factory GetDataMaskingPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetDataMaskingPolicyResult(
      applicationPrincipals: map['applicationPrincipals'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      dataMaskingState: map['dataMaskingState'] as String,
      exemptPrincipals: map['exemptPrincipals'] == null ? null : map['exemptPrincipals'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      maskingLevel: map['maskingLevel'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

