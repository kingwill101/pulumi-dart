// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JitNetworkAccessRequestPort {
  /// Mutually exclusive with the "allowedSourceAddressPrefixes" parameter. Should be an IP address or CIDR, for example "192.168.0.3" or "192.168.0.0/16".
  final pulumi.Input<String>? allowedSourceAddressPrefix;
  /// Mutually exclusive with the "allowedSourceAddressPrefix" parameter.
  final pulumi.Input<List<String>>? allowedSourceAddressPrefixes;
  /// The date & time at which the request ends in UTC
  final pulumi.Input<String> endTimeUtc;
  /// The port which is mapped to this port's `number` in the Azure Firewall, if applicable
  final pulumi.Input<int>? mappedPort;
  final pulumi.Input<int> number;
  /// The status of the port
  final pulumi.Input<String> status;
  /// A description of why the `status` has its value
  final pulumi.Input<String> statusReason;

  /// Creates a new [JitNetworkAccessRequestPort].
  /// [allowedSourceAddressPrefix] Mutually exclusive with the "allowedSourceAddressPrefixes" parameter. Should be an IP address or CIDR, for example "192.168.0.3" or "192.168.0.0/16".
  /// [allowedSourceAddressPrefixes] Mutually exclusive with the "allowedSourceAddressPrefix" parameter.
  /// [endTimeUtc] The date & time at which the request ends in UTC
  /// [mappedPort] The port which is mapped to this port's `number` in the Azure Firewall, if applicable
  /// [number] Required.
  /// [status] The status of the port
  /// [statusReason] A description of why the `status` has its value
  JitNetworkAccessRequestPort({
    this.allowedSourceAddressPrefix,
    this.allowedSourceAddressPrefixes,
    required this.endTimeUtc,
    this.mappedPort,
    required this.number,
    required this.status,
    required this.statusReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSourceAddressPrefix': ?allowedSourceAddressPrefix,
      'allowedSourceAddressPrefixes': ?allowedSourceAddressPrefixes,
      'endTimeUtc': endTimeUtc,
      'mappedPort': ?mappedPort,
      'number': number,
      'status': status,
      'statusReason': statusReason,
    };
  }

  factory JitNetworkAccessRequestPort.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessRequestPort(
      allowedSourceAddressPrefix: map['allowedSourceAddressPrefix'] == null ? null : (map['allowedSourceAddressPrefix'] as String).input(),
      allowedSourceAddressPrefixes: map['allowedSourceAddressPrefixes'] == null ? null : ((map['allowedSourceAddressPrefixes'] as List).cast<String>()).input(),
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      mappedPort: map['mappedPort'] == null ? null : (map['mappedPort'] as int).input(),
      number: (map['number'] as int).input(),
      status: (map['status'] as String).input(),
      statusReason: (map['statusReason'] as String).input(),
    );
  }
}

