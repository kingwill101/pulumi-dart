// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistrarDomain resources.
class RegistrarDomainState {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// Auto-renew controls whether subscription is automatically renewed upon domain expiration.
  final pulumi.Input<bool?>? autoRenew;
  /// Fully qualified domain name (FQDN) including the extension
  /// (e.g., `example.com`, `mybrand.app`). The domain name uniquely
  /// identifies a registration — the same domain cannot be registered
  /// twice, making it a natural idempotency key for registration requests.
  final pulumi.Input<String?>? domainName;
  /// Shows whether a registrar lock is in place for a domain.
  final pulumi.Input<bool?>? locked;
  /// Privacy option controls redacting WHOIS information.
  final pulumi.Input<bool?>? privacy;

  /// Creates a new [RegistrarDomainState].
  /// [accountId] Identifier
  /// [autoRenew] Auto-renew controls whether subscription is automatically renewed upon domain expiration.
  /// [domainName] Fully qualified domain name (FQDN) including the extension
  /// [locked] Shows whether a registrar lock is in place for a domain.
  /// [privacy] Privacy option controls redacting WHOIS information.
  const RegistrarDomainState({
    this.accountId,
    this.autoRenew,
    this.domainName,
    this.locked,
    this.privacy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'autoRenew': ?autoRenew,
      'domainName': ?domainName,
      'locked': ?locked,
      'privacy': ?privacy,
    };
  }

  factory RegistrarDomainState.fromMap(Map<String, dynamic> map) {
    return RegistrarDomainState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privacy: (() { final guardedValue = map['privacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
