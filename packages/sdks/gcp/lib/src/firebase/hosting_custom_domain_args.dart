// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_hosting_custom_domain_hosting_custom_domain_args_doc}
/// The set of arguments for HostingCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_firebase_hosting_custom_domain_hosting_custom_domain_args_doc}
class HostingCustomDomainArgs {
  /// A field that lets you specify which SSL certificate type Hosting creates
  /// for your domain name. Spark plan `CustomDomain`s only have access to the
  /// `GROUPED` cert type, while Blaze plan can select any option.
  /// Possible values are: `GROUPED`, `PROJECT_GROUPED`, `DEDICATED`.
  final pulumi.Input<String>? certPreference;
  /// The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  final pulumi.Input<String> customDomain;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A domain name that this CustomDomain should direct traffic towards. If
  /// specified, Hosting will respond to requests against this CustomDomain
  /// with an HTTP 301 code, and route traffic to the specified `redirect_target`
  /// instead.
  final pulumi.Input<String>? redirectTarget;
  /// The ID of the site in which to create this custom domain association.
  final pulumi.Input<String> siteId;
  final pulumi.Input<bool>? waitDnsVerification;

  /// Creates a new [HostingCustomDomainArgs].
  /// [certPreference] A field that lets you specify which SSL certificate type Hosting creates
  /// [customDomain] The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  /// [project] The ID of the project in which the resource belongs.
  /// [redirectTarget] A domain name that this CustomDomain should direct traffic towards. If
  /// [siteId] The ID of the site in which to create this custom domain association.
  /// [waitDnsVerification] Optional.
  const HostingCustomDomainArgs({
    this.certPreference,
    required this.customDomain,
    this.project,
    this.redirectTarget,
    required this.siteId,
    this.waitDnsVerification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certPreference': ?certPreference,
      'customDomain': customDomain,
      'project': ?project,
      'redirectTarget': ?redirectTarget,
      'siteId': siteId,
      'waitDnsVerification': ?waitDnsVerification,
    };
  }

  factory HostingCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainArgs(
      certPreference: (() { final guardedValue = map['certPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomain: pulumi.Input.fromValue(map['customDomain'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectTarget: (() { final guardedValue = map['redirectTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      waitDnsVerification: (() { final guardedValue = map['waitDnsVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

