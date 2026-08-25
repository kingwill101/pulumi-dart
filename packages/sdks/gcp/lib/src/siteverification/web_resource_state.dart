// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_resource_site.dart';

/// Input properties used for looking up and filtering WebResource resources.
class WebResourceState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The email addresses of all direct, verified owners of this exact property. Indirect owners —
  /// for example verified owners of the containing domain—are not included in this list.
  final pulumi.Input<List<String>?>? owners;
  /// Container for the address and type of a site for which a verification token will be verified.
  /// Structure is documented below.
  final pulumi.Input<WebResourceSite?>? site;
  /// The verification method for the Site Verification system to use to verify
  /// this site or domain.
  /// Possible values are: `ANALYTICS`, `DNS_CNAME`, `DNS_TXT`, `FILE`, `META`, `TAG_MANAGER`.
  final pulumi.Input<String?>? verificationMethod;
  /// The string used to identify this web resource.
  final pulumi.Input<String?>? webResourceId;

  /// Creates a new [WebResourceState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [owners] The email addresses of all direct, verified owners of this exact property. Indirect owners —
  /// [site] Container for the address and type of a site for which a verification token will be verified.
  /// [verificationMethod] The verification method for the Site Verification system to use to verify
  /// [webResourceId] The string used to identify this web resource.
  const WebResourceState({
    this.deletionPolicy,
    this.owners,
    this.site,
    this.verificationMethod,
    this.webResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'owners': ?owners,
      'site': ?pulumi.Input.mapOptionalInputValue<WebResourceSite, Map<String, dynamic>>(site, (value) => value.toMap()),
      'verificationMethod': ?verificationMethod,
      'webResourceId': ?webResourceId,
    };
  }

  factory WebResourceState.fromMap(Map<String, dynamic> map) {
    return WebResourceState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      site: (() { final guardedValue = map['site']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebResourceSite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verificationMethod: (() { final guardedValue = map['verificationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webResourceId: (() { final guardedValue = map['webResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
