// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StaticSiteCustomDomain resources.
class StaticSiteCustomDomainState {
  /// The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String?>? domainName;
  /// The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String?>? staticSiteId;
  /// Token to be used with `dns-txt-token` validation.
  final pulumi.Input<String?>? validationToken;
  /// One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String?>? validationType;

  /// Creates a new [StaticSiteCustomDomainState].
  /// [domainName] The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [staticSiteId] The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [validationToken] Token to be used with `dns-txt-token` validation.
  /// [validationType] One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  const StaticSiteCustomDomainState({
    this.domainName,
    this.staticSiteId,
    this.validationToken,
    this.validationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'staticSiteId': ?staticSiteId,
      'validationToken': ?validationToken,
      'validationType': ?validationType,
    };
  }

  factory StaticSiteCustomDomainState.fromMap(Map<String, dynamic> map) {
    return StaticSiteCustomDomainState(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticSiteId: (() { final guardedValue = map['staticSiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationToken: (() { final guardedValue = map['validationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationType: (() { final guardedValue = map['validationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
