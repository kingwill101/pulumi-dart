// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The structure describing the DNS Resource Record that needs to be added to DNS configuration for the authorization to be usable by certificate.
class DnsResourceRecordResponse {
  /// Data of the DNS Resource Record.
  final pulumi.Input<String> data;
  /// Fully qualified name of the DNS Resource Record. e.g. `_acme-challenge.example.com`
  final pulumi.Input<String> name;
  /// Type of the DNS Resource Record. Currently always set to "CNAME".
  final pulumi.Input<String> type;

  /// Creates a new [DnsResourceRecordResponse].
  /// [data] Data of the DNS Resource Record.
  /// [name] Fully qualified name of the DNS Resource Record. e.g. `_acme-challenge.example.com`
  /// [type] Type of the DNS Resource Record. Currently always set to "CNAME".
  DnsResourceRecordResponse({
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

  factory DnsResourceRecordResponse.fromMap(Map<String, dynamic> map) {
    return DnsResourceRecordResponse(
      data: pulumi.Input.fromValue(map['data'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

