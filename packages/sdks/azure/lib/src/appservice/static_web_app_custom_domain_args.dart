// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_static_web_app_custom_domain_static_web_app_custom_domain_args_doc}
/// The set of arguments for StaticWebAppCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appservice_static_web_app_custom_domain_static_web_app_custom_domain_args_doc}
class StaticWebAppCustomDomainArgs {
  /// The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String> domainName;
  /// The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String> staticWebAppId;
  /// One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  ///
  /// > **Note:** Apex domains must use `dns-txt-token` validation.
  ///
  /// > **Note:** Validation using `dns-txt-token` is performed asynchronously and Terraform does not wait for the validation process to be successful before marking the resource as created successfully. Please ensure that the appropriate TXT record is created using the `validation_token` value for this to complete out of band.
  final pulumi.Input<String> validationType;

  /// Creates a new [StaticWebAppCustomDomainArgs].
  /// [domainName] The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [staticWebAppId] The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [validationType] One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  StaticWebAppCustomDomainArgs({
    required this.domainName,
    required this.staticWebAppId,
    required this.validationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'staticWebAppId': staticWebAppId,
      'validationType': validationType,
    };
  }

  factory StaticWebAppCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return StaticWebAppCustomDomainArgs(
      domainName: (map['domainName'] as String).input(),
      staticWebAppId: (map['staticWebAppId'] as String).input(),
      validationType: (map['validationType'] as String).input(),
    );
  }
}

