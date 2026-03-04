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
      fqdn: (() {
        final guardedValue = map['fqdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddresses: (() {
        final guardedValue = map['ipAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      recordSetName: (() {
        final guardedValue = map['recordSetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recordType: (() {
        final guardedValue = map['recordType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
