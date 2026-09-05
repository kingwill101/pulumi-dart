// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StaticWebAppCustomDomain resources.
class StaticWebAppCustomDomainState {
  /// The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String?>? domainName;
  /// The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String?>? staticWebAppId;
  /// Token to be used with `dns-txt-token` validation.
  final pulumi.Input<String?>? validationToken;
  /// One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  ///
  /// &gt; **Note:** Apex domains must use `dns-txt-token` validation.
  ///
  /// &gt; **Note:** Validation using `dns-txt-token` is performed asynchronously and Terraform does not wait for the validation process to be successful before marking the resource as created successfully. Please ensure that the appropriate TXT record is created using the `validationToken` value for this to complete out of band.
  final pulumi.Input<String?>? validationType;

  /// Creates a new [StaticWebAppCustomDomainState].
  /// [domainName] The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [staticWebAppId] The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [validationToken] Token to be used with `dns-txt-token` validation.
  /// [validationType] One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  const StaticWebAppCustomDomainState({
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
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticWebAppId: (() { final guardedValue = map['staticWebAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationToken: (() { final guardedValue = map['validationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationType: (() { final guardedValue = map['validationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
