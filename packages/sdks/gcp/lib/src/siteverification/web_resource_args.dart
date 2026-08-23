// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_resource_site.dart';

/// {@template pulumi_siteverification_web_resource_web_resource_args_doc}
/// The set of arguments for WebResource.
/// {@endtemplate}
/// {@macro pulumi_siteverification_web_resource_web_resource_args_doc}
class WebResourceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Container for the address and type of a site for which a verification token will be verified.
  /// Structure is documented below.
  final pulumi.Input<WebResourceSite> site;
  /// The verification method for the Site Verification system to use to verify
  /// this site or domain.
  /// Possible values are: `ANALYTICS`, `DNS_CNAME`, `DNS_TXT`, `FILE`, `META`, `TAG_MANAGER`.
  final pulumi.Input<String> verificationMethod;

  /// Creates a new [WebResourceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [site] Container for the address and type of a site for which a verification token will be verified.
  /// [verificationMethod] The verification method for the Site Verification system to use to verify
  const WebResourceArgs({
    this.deletionPolicy,
    required this.site,
    required this.verificationMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'site': pulumi.Input.mapInputValue<WebResourceSite, Map<String, dynamic>>(site, (value) => value.toMap()),
      'verificationMethod': verificationMethod,
    };
  }

  factory WebResourceArgs.fromMap(Map<String, dynamic> map) {
    return WebResourceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      site: pulumi.Input.fromValue(WebResourceSite.fromMap((map['site']! as Map).cast<String, dynamic>())),
      verificationMethod: pulumi.Input.fromValue(map['verificationMethod'] as String),
    );
  }
}
