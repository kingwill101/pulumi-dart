// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceCustomDomain {
  /// Domain name
  final pulumi.Input<String>? domain;
  /// (Output)
  /// Status of the custom domain.
  final pulumi.Input<String>? state;

  /// Creates a new [InstanceCustomDomain].
  /// [domain] Domain name
  /// [state] (Output)
  const InstanceCustomDomain({
    this.domain,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'state': ?state,
    };
  }

  factory InstanceCustomDomain.fromMap(Map<String, dynamic> map) {
    return InstanceCustomDomain(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

