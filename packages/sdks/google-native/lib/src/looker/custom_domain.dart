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
  CustomDomain({
    this.domain,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'state': ?pulumi.Input.mapOptionalInputValue<CustomDomainState, String>(state, (value) => value.value),
    };
  }

  factory CustomDomain.fromMap(Map<String, dynamic> map) {
    return CustomDomain(
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      state: map['state'] == null ? null : (CustomDomainState.fromValue(map['state']! as String)).input(),
    );
  }
}

