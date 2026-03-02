// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StaticWebAppCustomDomain resources.
class StaticWebAppCustomDomainState {
  /// The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String>? domainName;
  /// The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String>? staticWebAppId;
  /// Token to be used with `dns-txt-token` validation.
  final pulumi.Input<String>? validationToken;
  /// One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  ///
  /// > **Note:** Apex domains must use `dns-txt-token` validation.
  ///
  /// > **Note:** Validation using `dns-txt-token` is performed asynchronously and Terraform does not wait for the validation process to be successful before marking the resource as created successfully. Please ensure that the appropriate TXT record is created using the `validation_token` value for this to complete out of band.
  final pulumi.Input<String>? validationType;

  /// Creates a new [StaticWebAppCustomDomainState].
  /// [domainName] The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [staticWebAppId] The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [validationToken] Token to be used with `dns-txt-token` validation.
  /// [validationType] One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  StaticWebAppCustomDomainState({
    this.domainName,
    this.staticWebAppId,
    this.validationToken,
    this.validationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'staticWebAppId': ?staticWebAppId,
      'validationToken': ?validationToken,
      'validationType': ?validationType,
    };
  }

  factory StaticWebAppCustomDomainState.fromMap(Map<String, dynamic> map) {
    return StaticWebAppCustomDomainState(
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      staticWebAppId: map['staticWebAppId'] == null ? null : (map['staticWebAppId'] as String).input(),
      validationToken: map['validationToken'] == null ? null : (map['validationToken'] as String).input(),
      validationType: map['validationType'] == null ? null : (map['validationType'] as String).input(),
    );
  }
}

