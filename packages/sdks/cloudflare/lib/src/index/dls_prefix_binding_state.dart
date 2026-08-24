// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DlsPrefixBinding resources.
class DlsPrefixBindingState {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String?>? accountId;
  /// IP prefix in CIDR notation to bind.
  final pulumi.Input<String?>? cidr;
  /// The ID of the parent IP prefix that contains the CIDR.
  final pulumi.Input<String?>? prefixId;
  /// Region key from managed regions (e.g., "us", "eu").
  final pulumi.Input<String?>? regionKey;

  /// Creates a new [DlsPrefixBindingState].
  /// [accountId] Identifier of a Cloudflare account.
  /// [cidr] IP prefix in CIDR notation to bind.
  /// [prefixId] The ID of the parent IP prefix that contains the CIDR.
  /// [regionKey] Region key from managed regions (e.g., "us", "eu").
  const DlsPrefixBindingState({
    this.accountId,
    this.cidr,
    this.prefixId,
    this.regionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'cidr': ?cidr,
      'prefixId': ?prefixId,
      'regionKey': ?regionKey,
    };
  }

  factory DlsPrefixBindingState.fromMap(Map<String, dynamic> map) {
    return DlsPrefixBindingState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixId: (() { final guardedValue = map['prefixId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionKey: (() { final guardedValue = map['regionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
