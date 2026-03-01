// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StaticSiteCustomDomain resources.
class StaticSiteCustomDomainState {
  /// The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String>? domainName;
  /// The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String>? staticSiteId;
  /// Token to be used with `dns-txt-token` validation.
  final pulumi.Input<String>? validationToken;
  /// One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String>? validationType;

  /// Creates a new [StaticSiteCustomDomainState].
  /// [domainName] The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [staticSiteId] The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [validationToken] Token to be used with `dns-txt-token` validation.
  /// [validationType] One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  StaticSiteCustomDomainState({
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? staticSiteId,
    pulumi.Output<String>? validationToken,
    pulumi.Output<String>? validationType,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      staticSiteId = pulumi.Input.asOptionalInput<String>(staticSiteId),
      validationToken = pulumi.Input.asOptionalInput<String>(validationToken),
      validationType = pulumi.Input.asOptionalInput<String>(validationType);

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
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      staticSiteId: map['staticSiteId'] == null ? null : pulumi.Output.create<String>(map['staticSiteId'] as String),
      validationToken: map['validationToken'] == null ? null : pulumi.Output.create<String>(map['validationToken'] as String),
      validationType: map['validationType'] == null ? null : pulumi.Output.create<String>(map['validationType'] as String),
    );
  }
}

