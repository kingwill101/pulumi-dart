// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailServiceDomainVerificationRecordDkim {
  /// The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? name;
  /// Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  final pulumi.Input<int>? ttl;
  /// Type of the DNS record. Example: TXT
  final pulumi.Input<String>? type;
  /// Value of the DNS record.
  final pulumi.Input<String>? value;

  /// Creates a new [EmailServiceDomainVerificationRecordDkim].
  /// [name] The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  /// [ttl] Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  /// [type] Type of the DNS record. Example: TXT
  /// [value] Value of the DNS record.
  EmailServiceDomainVerificationRecordDkim({
    this.name,
    this.ttl,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'ttl': ?ttl,
      'type': ?type,
      'value': ?value,
    };
  }

  factory EmailServiceDomainVerificationRecordDkim.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainVerificationRecordDkim(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

