// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseInstancesInstanceDnsName {
  final String connectionType;
  final String dnsScope;
  final String name;

  /// Creates a new [GetDatabaseInstancesInstanceDnsName].
  /// [connectionType] Required.
  /// [dnsScope] Required.
  /// [name] Required.
  GetDatabaseInstancesInstanceDnsName({
    required this.connectionType,
    required this.dnsScope,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
      'dnsScope': dnsScope,
      'name': name,
    };
  }

  factory GetDatabaseInstancesInstanceDnsName.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceDnsName(
      connectionType: map['connectionType'] as String,
      dnsScope: map['dnsScope'] as String,
      name: map['name'] as String,
    );
  }
}

