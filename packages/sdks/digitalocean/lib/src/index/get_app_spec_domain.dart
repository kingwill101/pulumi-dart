// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecDomain {
  /// The name of the component.
  final pulumi.Input<String> name;

  /// The type of the environment variable, `GENERAL` or `SECRET`.
  final pulumi.Input<String> type;

  /// Indicates whether the domain includes all sub-domains, in addition to the given domain.
  final pulumi.Input<bool> wildcard;

  /// If the domain uses DigitalOcean DNS and you would like App Platform to automatically manage it for you, set this to the name of the domain on your account.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetAppSpecDomain].
  /// [name] The name of the component.
  /// [type] The type of the environment variable, `GENERAL` or `SECRET`.
  /// [wildcard] Indicates whether the domain includes all sub-domains, in addition to the given domain.
  /// [zone] If the domain uses DigitalOcean DNS and you would like App Platform to automatically manage it for you, set this to the name of the domain on your account.
  GetAppSpecDomain({
    required this.name,
    required this.type,
    required this.wildcard,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'wildcard': wildcard,
      'zone': ?zone,
    };
  }

  factory GetAppSpecDomain.fromMap(Map<String, dynamic> map) {
    return GetAppSpecDomain(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      wildcard: pulumi.Input.fromValue(map['wildcard'] as bool),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
