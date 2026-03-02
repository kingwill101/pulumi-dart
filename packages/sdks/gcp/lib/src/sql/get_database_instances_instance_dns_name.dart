// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceDnsName {
  final pulumi.Input<String> connectionType;
  final pulumi.Input<String> dnsScope;
  final pulumi.Input<String> name;

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
      connectionType: (map['connectionType'] as String).input(),
      dnsScope: (map['dnsScope'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

