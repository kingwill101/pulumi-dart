// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsAuthorizationDnsResourceRecord {
  /// Data of the DNS Resource Record.
  final pulumi.Input<String> data;
  /// The name of the DNS Authorization.
  final pulumi.Input<String> name;
  /// Type of the DNS Resource Record.
  final pulumi.Input<String> type;

  /// Creates a new [GetDnsAuthorizationDnsResourceRecord].
  /// [data] Data of the DNS Resource Record.
  /// [name] The name of the DNS Authorization.
  /// [type] Type of the DNS Resource Record.
  GetDnsAuthorizationDnsResourceRecord({
    required this.data,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'name': name,
      'type': type,
    };
  }

  factory GetDnsAuthorizationDnsResourceRecord.fromMap(Map<String, dynamic> map) {
    return GetDnsAuthorizationDnsResourceRecord(
      data: (map['data'] as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

