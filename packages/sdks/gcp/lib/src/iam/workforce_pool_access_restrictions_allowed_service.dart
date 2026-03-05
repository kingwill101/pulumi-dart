// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforcePoolAccessRestrictionsAllowedService {
  /// Domain name of the service.
  /// Example: console.cloud.google
  final pulumi.Input<String>? domain;

  /// Creates a new [WorkforcePoolAccessRestrictionsAllowedService].
  /// [domain] Domain name of the service.
  WorkforcePoolAccessRestrictionsAllowedService({
    this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
    };
  }

  factory WorkforcePoolAccessRestrictionsAllowedService.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolAccessRestrictionsAllowedService(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

