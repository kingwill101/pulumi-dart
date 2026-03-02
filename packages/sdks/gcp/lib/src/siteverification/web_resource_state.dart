// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_resource_site.dart';

/// Input properties used for looking up and filtering WebResource resources.
class WebResourceState {
  /// The email addresses of all direct, verified owners of this exact property. Indirect owners —
  /// for example verified owners of the containing domain—are not included in this list.
  final pulumi.Input<List<String>>? owners;
  /// Container for the address and type of a site for which a verification token will be verified.
  /// Structure is documented below.
  final pulumi.Input<WebResourceSite>? site;
  /// The verification method for the Site Verification system to use to verify
  /// this site or domain.
  /// Possible values are: `ANALYTICS`, `DNS_CNAME`, `DNS_TXT`, `FILE`, `META`, `TAG_MANAGER`.
  final pulumi.Input<String>? verificationMethod;
  /// The string used to identify this web resource.
  final pulumi.Input<String>? webResourceId;

  /// Creates a new [WebResourceState].
  /// [owners] The email addresses of all direct, verified owners of this exact property. Indirect owners —
  /// [site] Container for the address and type of a site for which a verification token will be verified.
  /// [verificationMethod] The verification method for the Site Verification system to use to verify
  /// [webResourceId] The string used to identify this web resource.
  WebResourceState({
    this.owners,
    this.site,
    this.verificationMethod,
    this.webResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owners': ?owners,
      'site': ?pulumi.Input.mapOptionalInputValue<WebResourceSite, Map<String, dynamic>>(site, (value) => value.toMap()),
      'verificationMethod': ?verificationMethod,
      'webResourceId': ?webResourceId,
    };
  }

  factory WebResourceState.fromMap(Map<String, dynamic> map) {
    return WebResourceState(
      owners: map['owners'] == null ? null : ((map['owners'] as List).cast<String>()).input(),
      site: map['site'] == null ? null : (WebResourceSite.fromMap((map['site'] as Map).cast<String, dynamic>())).input(),
      verificationMethod: map['verificationMethod'] == null ? null : (map['verificationMethod'] as String).input(),
      webResourceId: map['webResourceId'] == null ? null : (map['webResourceId'] as String).input(),
    );
  }
}

