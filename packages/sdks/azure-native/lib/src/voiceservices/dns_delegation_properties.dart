// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of a DNS Domain delegated to the Communications Gateway.
class DnsDelegationProperties {
  /// Domain name to delegate
  final pulumi.Input<String>? domain;

  /// Creates a new [DnsDelegationProperties].
  /// [domain] Domain name to delegate
  DnsDelegationProperties({
    this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
    };
  }

  factory DnsDelegationProperties.fromMap(Map<String, dynamic> map) {
    return DnsDelegationProperties(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

