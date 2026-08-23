// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DnsAuthorizationDnsResourceRecord {
  /// (Output)
  /// Data of the DNS Resource Record.
  final pulumi.Input<String>? data;
  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String>? name;
  /// type of DNS authorization. If unset during the resource creation, FIXED_RECORD will
  /// be used for global resources, and PER_PROJECT_RECORD will be used for other locations.
  /// FIXED_RECORD DNS authorization uses DNS-01 validation method
  /// PER_PROJECT_RECORD DNS authorization allows for independent management
  /// of Google-managed certificates with DNS authorization across multiple
  /// projects.
  /// Possible values are: `FIXED_RECORD`, `PER_PROJECT_RECORD`.
  final pulumi.Input<String>? type;

  /// Creates a new [DnsAuthorizationDnsResourceRecord].
  /// [data] (Output)
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [type] type of DNS authorization. If unset during the resource creation, FIXED_RECORD will
  const DnsAuthorizationDnsResourceRecord({
    this.data,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'name': ?name,
      'type': ?type,
    };
  }

  factory DnsAuthorizationDnsResourceRecord.fromMap(Map<String, dynamic> map) {
    return DnsAuthorizationDnsResourceRecord(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
