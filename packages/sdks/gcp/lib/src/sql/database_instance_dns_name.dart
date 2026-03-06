// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceDnsName {
  /// The connection type of the DNS name. Can be either `PUBLIC`, `PRIVATE_SERVICES_ACCESS`, or `PRIVATE_SERVICE_CONNECT`.
  final pulumi.Input<String>? connectionType;
  /// The scope that the DNS name applies to.
  final pulumi.Input<String>? dnsScope;
  /// The name of the instance. If the name is left
  /// blank, the provider will randomly generate one when the instance is first
  /// created. This is done because after a name is used, it cannot be reused for
  /// up to [one week](https://cloud.google.com/sql/docs/delete-instance).
  final pulumi.Input<String>? name;

  /// Creates a new [DatabaseInstanceDnsName].
  /// [connectionType] The connection type of the DNS name. Can be either `PUBLIC`, `PRIVATE_SERVICES_ACCESS`, or `PRIVATE_SERVICE_CONNECT`.
  /// [dnsScope] The scope that the DNS name applies to.
  /// [name] The name of the instance. If the name is left
  const DatabaseInstanceDnsName({
    this.connectionType,
    this.dnsScope,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType,
      'dnsScope': ?dnsScope,
      'name': ?name,
    };
  }

  factory DatabaseInstanceDnsName.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceDnsName(
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsScope: (() { final guardedValue = map['dnsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

