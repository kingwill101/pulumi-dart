// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A collective group of information about the record set information.
class RecordSetResponse {
  /// Fqdn that resolves to private endpoint ip address.
  final pulumi.Input<String>? fqdn;
  /// The private ip address of the private endpoint.
  final pulumi.Input<List<String>>? ipAddresses;
  /// The provisioning state of the recordset.
  final pulumi.Input<String> provisioningState;
  /// Recordset name.
  final pulumi.Input<String>? recordSetName;
  /// Resource record type.
  final pulumi.Input<String>? recordType;
  /// Recordset time to live.
  final pulumi.Input<int>? ttl;

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
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses']! as List).cast<String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      recordSetName: map['recordSetName'] == null ? null : (map['recordSetName']! as String).input(),
      recordType: map['recordType'] == null ? null : (map['recordType']! as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
    );
  }
}

