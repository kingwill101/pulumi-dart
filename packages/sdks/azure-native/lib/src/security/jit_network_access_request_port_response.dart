// ignore_for_file: unused_element, unnecessary_cast


class JitNetworkAccessRequestPortResponse {
  /// Mutually exclusive with the "allowedSourceAddressPrefixes" parameter. Should be an IP address or CIDR, for example "192.168.0.3" or "192.168.0.0/16".
  final String? allowedSourceAddressPrefix;
  /// Mutually exclusive with the "allowedSourceAddressPrefix" parameter.
  final List<String>? allowedSourceAddressPrefixes;
  /// The date & time at which the request ends in UTC
  final String endTimeUtc;
  /// The port which is mapped to this port's `number` in the Azure Firewall, if applicable
  final int? mappedPort;
  final int number;
  /// The status of the port
  final String status;
  /// A description of why the `status` has its value
  final String statusReason;

  /// Creates a new [JitNetworkAccessRequestPortResponse].
  /// [allowedSourceAddressPrefix] Mutually exclusive with the "allowedSourceAddressPrefixes" parameter. Should be an IP address or CIDR, for example "192.168.0.3" or "192.168.0.0/16".
  /// [allowedSourceAddressPrefixes] Mutually exclusive with the "allowedSourceAddressPrefix" parameter.
  /// [endTimeUtc] The date & time at which the request ends in UTC
  /// [mappedPort] The port which is mapped to this port's `number` in the Azure Firewall, if applicable
  /// [number] Required.
  /// [status] The status of the port
  /// [statusReason] A description of why the `status` has its value
  JitNetworkAccessRequestPortResponse({
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

  factory JitNetworkAccessRequestPortResponse.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessRequestPortResponse(
      allowedSourceAddressPrefix: map['allowedSourceAddressPrefix'] == null ? null : map['allowedSourceAddressPrefix'] as String,
      allowedSourceAddressPrefixes: map['allowedSourceAddressPrefixes'] == null ? null : (map['allowedSourceAddressPrefixes'] as List).cast<String>(),
      endTimeUtc: map['endTimeUtc'] as String,
      mappedPort: map['mappedPort'] == null ? null : map['mappedPort'] as int,
      number: map['number'] as int,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
    );
  }
}

