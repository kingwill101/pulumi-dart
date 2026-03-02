// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationUrlDispatchRule {
  final pulumi.Input<String>? domain;
  final pulumi.Input<String>? path;
  final pulumi.Input<String>? service;

  /// Creates a new [ApplicationUrlDispatchRule].
  /// [domain] Optional.
  /// [path] Optional.
  /// [service] Optional.
  ApplicationUrlDispatchRule({
    this.domain,
    this.path,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'path': ?path,
      'service': ?service,
    };
  }

  factory ApplicationUrlDispatchRule.fromMap(Map<String, dynamic> map) {
    return ApplicationUrlDispatchRule(
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
    );
  }
}

