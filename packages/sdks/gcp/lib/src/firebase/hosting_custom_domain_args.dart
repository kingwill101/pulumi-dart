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
  final pulumi.Input<String?>? certPreference;
  /// The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  final pulumi.Input<String> customDomain;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A domain name that this CustomDomain should direct traffic towards. If
  /// specified, Hosting will respond to requests against this CustomDomain
  /// with an HTTP 301 code, and route traffic to the specified `redirectTarget`
  /// instead.
  final pulumi.Input<String?>? redirectTarget;
  /// The ID of the site in which to create this custom domain association.
  final pulumi.Input<String> siteId;
  /// If true, Terraform will wait for DNS records to be fully resolved on the `CustomDomain`.
  /// If false, Terraform will not wait for DNS records on the `CustomDomain`. Any issues in
  /// the `CustomDomain` will be returned and stored in the Terraform state.
  final pulumi.Input<bool?>? waitDnsVerification;

  /// Creates a new [HostingCustomDomainArgs].
  /// [certPreference] A field that lets you specify which SSL certificate type Hosting creates
  /// [customDomain] The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  /// [redirectTarget] A domain name that this CustomDomain should direct traffic towards. If
  /// [siteId] The ID of the site in which to create this custom domain association.
  /// [waitDnsVerification] If true, Terraform will wait for DNS records to be fully resolved on the `CustomDomain`.
  const HostingCustomDomainArgs({
    this.certPreference,
    required this.customDomain,
    this.deletionPolicy,
    this.project,
    this.redirectTarget,
    required this.siteId,
    this.waitDnsVerification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certPreference': ?certPreference,
      'customDomain': customDomain,
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectTarget: (() { final guardedValue = map['redirectTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      waitDnsVerification: (() { final guardedValue = map['waitDnsVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
