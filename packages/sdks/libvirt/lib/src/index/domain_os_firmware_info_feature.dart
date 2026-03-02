// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsFirmwareInfoFeature {
  /// Indicates whether a particular firmware feature is enabled or not.
  final pulumi.Input<String>? enabled;
  /// Sets the name identifier of a specific firmware feature.
  final pulumi.Input<String>? name;

  /// Creates a new [DomainOsFirmwareInfoFeature].
  /// [enabled] Indicates whether a particular firmware feature is enabled or not.
  /// [name] Sets the name identifier of a specific firmware feature.
  DomainOsFirmwareInfoFeature({
    this.enabled,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
    };
  }

  factory DomainOsFirmwareInfoFeature.fromMap(Map<String, dynamic> map) {
    return DomainOsFirmwareInfoFeature(
      enabled: map['enabled'] == null ? null : (map['enabled']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

