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
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

