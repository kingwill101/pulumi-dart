// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_state.dart';

/// Custom domain information.
class CustomDomain {
  /// Domain name.
  final pulumi.Input<String>? domain;
  /// Domain state.
  final pulumi.Input<CustomDomainState>? state;

  /// Creates a new [CustomDomain].
  /// [domain] Domain name.
  /// [state] Domain state.
  const CustomDomain({
    this.domain,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'state': ?pulumi.Input.mapOptionalInputValue<CustomDomainState, String>(state, (value) => value.wireValue),
    };
  }

  factory CustomDomain.fromMap(Map<String, dynamic> map) {
    return CustomDomain(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomDomainState.fromValue(guardedValue as String)); })(),
    );
  }
}
