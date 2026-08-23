// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyPackComplianceFrameworkInput {
  /// Compliance framework name (e.g. "PCI-DSS", "SOC2").
  final pulumi.Input<String> name;
  /// Reference to the framework (e.g. a control ID).
  final pulumi.Input<String>? reference;
  /// Free-form specification text.
  final pulumi.Input<String>? specification;
  /// Compliance framework version.
  final pulumi.Input<String>? version;

  /// Creates a new [PolicyPackComplianceFrameworkInput].
  /// [name] Compliance framework name (e.g. "PCI-DSS", "SOC2").
  /// [reference] Reference to the framework (e.g. a control ID).
  /// [specification] Free-form specification text.
  /// [version] Compliance framework version.
  const PolicyPackComplianceFrameworkInput({
    required this.name,
    this.reference,
    this.specification,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'reference': ?reference,
      'specification': ?specification,
      'version': ?version,
    };
  }

  factory PolicyPackComplianceFrameworkInput.fromMap(Map<String, dynamic> map) {
    return PolicyPackComplianceFrameworkInput(
      name: pulumi.Input.fromValue(map['name'] as String),
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
