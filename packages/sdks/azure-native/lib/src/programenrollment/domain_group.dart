// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A group of edu domains scoped to an Entra tenant.
class DomainGroup {
  /// The edu domain names in this group.
  final pulumi.Input<List<String>> domainNames;
  /// The Entra tenant ID that owns these domains. Defaults to the caller's tenant if omitted.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [DomainGroup].
  /// [domainNames] The edu domain names in this group.
  /// [tenantId] The Entra tenant ID that owns these domains. Defaults to the caller's tenant if omitted.
  const DomainGroup({
    required this.domainNames,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNames': domainNames,
      'tenantId': ?tenantId,
    };
  }

  factory DomainGroup.fromMap(Map<String, dynamic> map) {
    return DomainGroup(
      domainNames: pulumi.Input.fromValue((map['domainNames'] as List).cast<String>()),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
