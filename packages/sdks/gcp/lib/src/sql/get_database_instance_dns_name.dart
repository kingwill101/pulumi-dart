// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceDnsName {
  final pulumi.Input<String> connectionType;
  final pulumi.Input<String> dnsScope;
  /// The name of the instance.
  final pulumi.Input<String> name;

  /// Creates a new [GetDatabaseInstanceDnsName].
  /// [connectionType] Required.
  /// [dnsScope] Required.
  /// [name] The name of the instance.
  GetDatabaseInstanceDnsName({
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

  factory GetDatabaseInstanceDnsName.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceDnsName(
      connectionType: (map['connectionType'] as String).input(),
      dnsScope: (map['dnsScope'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

