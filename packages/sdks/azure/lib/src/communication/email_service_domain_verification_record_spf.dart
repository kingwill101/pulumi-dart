// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailServiceDomainVerificationRecordSpf {
  /// The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  final pulumi.Input<String>? name;
  /// Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  final pulumi.Input<int>? ttl;
  /// Type of the DNS record. Example: TXT
  final pulumi.Input<String>? type;
  /// Value of the DNS record.
  final pulumi.Input<String>? value;

  /// Creates a new [EmailServiceDomainVerificationRecordSpf].
  /// [name] The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  /// [ttl] Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  /// [type] Type of the DNS record. Example: TXT
  /// [value] Value of the DNS record.
  EmailServiceDomainVerificationRecordSpf({
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

  factory EmailServiceDomainVerificationRecordSpf.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainVerificationRecordSpf(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

