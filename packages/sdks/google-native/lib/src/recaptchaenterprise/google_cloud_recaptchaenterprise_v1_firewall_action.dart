// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_firewall_action_set_header_action.dart';
import 'google_cloud_recaptchaenterprise_v1_firewall_action_substitute_action.dart';

/// An individual action. Each action represents what to do if a policy matches.
class GoogleCloudRecaptchaenterpriseV1FirewallAction {
  /// The user request did not match any policy and should be allowed access to the requested resource.
  final pulumi.Input<Map<String, dynamic>>? allow;
  /// This action will deny access to a given page. The user will get an HTTP error code.
  final pulumi.Input<Map<String, dynamic>>? block;
  /// This action will redirect the request to a ReCaptcha interstitial to attach a token.
  final pulumi.Input<Map<String, dynamic>>? redirect;
  /// This action will set a custom header but allow the request to continue to the customer backend.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction>? setHeader;
  /// This action will transparently serve a different page to an offending user.
  final pulumi.Input<GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction>? substitute;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1FirewallAction].
  /// [allow] The user request did not match any policy and should be allowed access to the requested resource.
  /// [block] This action will deny access to a given page. The user will get an HTTP error code.
  /// [redirect] This action will redirect the request to a ReCaptcha interstitial to attach a token.
  /// [setHeader] This action will set a custom header but allow the request to continue to the customer backend.
  /// [substitute] This action will transparently serve a different page to an offending user.
  GoogleCloudRecaptchaenterpriseV1FirewallAction({
    this.allow,
    this.block,
    this.redirect,
    this.setHeader,
    this.substitute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'block': ?block,
      'redirect': ?redirect,
      'setHeader': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction, Map<String, dynamic>>(setHeader, (value) => value.toMap()),
      'substitute': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction, Map<String, dynamic>>(substitute, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1FirewallAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1FirewallAction(
      allow: map['allow'] == null ? null : ((map['allow']! as Map).cast<String, dynamic>()).input(),
      block: map['block'] == null ? null : ((map['block']! as Map).cast<String, dynamic>()).input(),
      redirect: map['redirect'] == null ? null : ((map['redirect']! as Map).cast<String, dynamic>()).input(),
      setHeader: map['setHeader'] == null ? null : (GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction.fromMap((map['setHeader']! as Map).cast<String, dynamic>())).input(),
      substitute: map['substitute'] == null ? null : (GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction.fromMap((map['substitute']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

