// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCasbIntegrationAuthorizationLink {
  final pulumi.Input<Map<String, String>> components;
  final pulumi.Input<String> link;

  /// Creates a new [GetZeroTrustCasbIntegrationAuthorizationLink].
  /// [components] Required.
  /// [link] Required.
  const GetZeroTrustCasbIntegrationAuthorizationLink({
    required this.components,
    required this.link,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': components,
      'link': link,
    };
  }

  factory GetZeroTrustCasbIntegrationAuthorizationLink.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbIntegrationAuthorizationLink(
      components: pulumi.Input.fromValue((map['components'] as Map).cast<String, String>()),
      link: pulumi.Input.fromValue(map['link'] as String),
    );
  }
}
