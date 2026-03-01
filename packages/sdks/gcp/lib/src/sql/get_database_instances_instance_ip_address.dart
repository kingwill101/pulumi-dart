// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseInstancesInstanceIpAddress {
  final String ipAddress;
  final String timeToRetire;
  final String type;

  /// Creates a new [GetDatabaseInstancesInstanceIpAddress].
  /// [ipAddress] Required.
  /// [timeToRetire] Required.
  /// [type] Required.
  GetDatabaseInstancesInstanceIpAddress({
    required this.ipAddress,
    required this.timeToRetire,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'timeToRetire': timeToRetire,
      'type': type,
    };
  }

  factory GetDatabaseInstancesInstanceIpAddress.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceIpAddress(
      ipAddress: map['ipAddress'] as String,
      timeToRetire: map['timeToRetire'] as String,
      type: map['type'] as String,
    );
  }
}

