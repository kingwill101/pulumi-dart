// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationUrlDispatchRule {
  /// Domain name to match against.
  final pulumi.Input<String?>? domain;
  /// Pathname within the host.
  final pulumi.Input<String?>? path;
  /// Resource ID of a service in this application that should serve the matched request.
  final pulumi.Input<String?>? service;

  /// Creates a new [ApplicationUrlDispatchRule].
  /// [domain] Domain name to match against.
  /// [path] Pathname within the host.
  /// [service] Resource ID of a service in this application that should serve the matched request.
  const ApplicationUrlDispatchRule({
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
