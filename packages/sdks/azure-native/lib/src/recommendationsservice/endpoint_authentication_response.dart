// ignore_for_file: unused_element, unnecessary_cast


/// Service endpoints authentication details.
class EndpointAuthenticationResponse {
  /// AAD tenant ID.
  final String? aadTenantID;
  /// AAD principal ID.
  final String? principalID;
  /// AAD principal type.
  final String? principalType;

  /// Creates a new [EndpointAuthenticationResponse].
  /// [aadTenantID] AAD tenant ID.
  /// [principalID] AAD principal ID.
  /// [principalType] AAD principal type.
  EndpointAuthenticationResponse({
    this.aadTenantID,
    this.principalID,
    this.principalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadTenantID': ?aadTenantID,
      'principalID': ?principalID,
      'principalType': ?principalType,
    };
  }

  factory EndpointAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return EndpointAuthenticationResponse(
      aadTenantID: map['aadTenantID'] == null ? null : map['aadTenantID'] as String,
      principalID: map['principalID'] == null ? null : map['principalID'] as String,
      principalType: map['principalType'] == null ? null : map['principalType'] as String,
    );
  }
}

