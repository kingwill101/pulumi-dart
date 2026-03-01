// ignore_for_file: unused_element, unnecessary_cast


/// Service endpoints authentication details.
class EndpointAuthentication {
  /// AAD tenant ID.
  final String? aadTenantID;
  /// AAD principal ID.
  final String? principalID;
  /// AAD principal type.
  final String? principalType;

  /// Creates a new [EndpointAuthentication].
  /// [aadTenantID] AAD tenant ID.
  /// [principalID] AAD principal ID.
  /// [principalType] AAD principal type.
  EndpointAuthentication({
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

  factory EndpointAuthentication.fromMap(Map<String, dynamic> map) {
    return EndpointAuthentication(
      aadTenantID: map['aadTenantID'] == null ? null : map['aadTenantID'] as String,
      principalID: map['principalID'] == null ? null : map['principalID'] as String,
      principalType: map['principalType'] == null ? null : map['principalType'] as String,
    );
  }
}

