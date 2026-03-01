// ignore_for_file: unused_element, unnecessary_cast


/// A collective group of information about the record set information.
class RecordSetResponse {
  /// Fqdn that resolves to private endpoint ip address.
  final String? fqdn;
  /// The private ip address of the private endpoint.
  final List<String>? ipAddresses;
  /// The provisioning state of the recordset.
  final String provisioningState;
  /// Recordset name.
  final String? recordSetName;
  /// Resource record type.
  final String? recordType;
  /// Recordset time to live.
  final int? ttl;

  /// Creates a new [RecordSetResponse].
  /// [fqdn] Fqdn that resolves to private endpoint ip address.
  /// [ipAddresses] The private ip address of the private endpoint.
  /// [provisioningState] The provisioning state of the recordset.
  /// [recordSetName] Recordset name.
  /// [recordType] Resource record type.
  /// [ttl] Recordset time to live.
  RecordSetResponse({
    this.fqdn,
    this.ipAddresses,
    required this.provisioningState,
    this.recordSetName,
    this.recordType,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'ipAddresses': ?ipAddresses,
      'provisioningState': provisioningState,
      'recordSetName': ?recordSetName,
      'recordType': ?recordType,
      'ttl': ?ttl,
    };
  }

  factory RecordSetResponse.fromMap(Map<String, dynamic> map) {
    return RecordSetResponse(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      recordSetName: map['recordSetName'] == null ? null : map['recordSetName'] as String,
      recordType: map['recordType'] == null ? null : map['recordType'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
    );
  }
}

