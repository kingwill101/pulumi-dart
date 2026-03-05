// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_firewall_action_set_header_action_response.dart';
import 'google_cloud_recaptchaenterprise_v1_firewall_action_substitute_action_response.dart';

/// An individual action. Each action represents what to do if a policy matches.
class GoogleCloudRecaptchaenterpriseV1FirewallActionResponse {
  /// The user request did not match any policy and should be allowed access to the requested resource.
  final pulumi.Input<Map<String, dynamic>> allow;
  /// This action will deny access to a given page. The user will get an HTTP error code.
  final pulumi.Input<Map<String, dynamic>> block;
  /// This action will redirect the request to a ReCaptcha interstitial to attach a token.
  final pulumi.Input<Map<String, dynamic>> redirect;
  /// This action will set a custom header but allow the request to continue to the customer backend.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse> setHeader;
  /// This action will transparently serve a different page to an offending user.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteActionResponse> substitute;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1FirewallActionResponse].
  /// [allow] The user request did not match any policy and should be allowed access to the requested resource.
  /// [block] This action will deny access to a given page. The user will get an HTTP error code.
  /// [redirect] This action will redirect the request to a ReCaptcha interstitial to attach a token.
  /// [setHeader] This action will set a custom header but allow the request to continue to the customer backend.
  /// [substitute] This action will transparently serve a different page to an offending user.
  GoogleCloudRecaptchaenterpriseV1FirewallActionResponse({
    required this.allow,
    required this.block,
    required this.redirect,
    required this.setHeader,
    required this.substitute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': allow,
      'block': block,
      'redirect': redirect,
      'setHeader': pulumi.Input.mapInputValue<GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse, Map<String, dynamic>>(setHeader, (value) => value.toMap()),
      'substitute': pulumi.Input.mapInputValue<GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteActionResponse, Map<String, dynamic>>(substitute, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1FirewallActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1FirewallActionResponse(
      allow: pulumi.Input.fromValue((map['allow']! as Map).cast<String, dynamic>()),
      block: pulumi.Input.fromValue((map['block']! as Map).cast<String, dynamic>()),
      redirect: pulumi.Input.fromValue((map['redirect']! as Map).cast<String, dynamic>()),
      setHeader: pulumi.Input.fromValue(GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse.fromMap((map['setHeader']! as Map).cast<String, dynamic>())),
      substitute: pulumi.Input.fromValue(GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteActionResponse.fromMap((map['substitute']! as Map).cast<String, dynamic>())),
    );
  }
}

