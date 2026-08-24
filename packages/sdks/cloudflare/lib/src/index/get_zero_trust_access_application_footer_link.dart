// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationFooterLink {
  /// The hypertext in the footer link.
  final pulumi.Input<String> name;
  /// the hyperlink in the footer link.
  final pulumi.Input<String> url;

  /// Creates a new [GetZeroTrustAccessApplicationFooterLink].
  /// [name] The hypertext in the footer link.
  /// [url] the hyperlink in the footer link.
  const GetZeroTrustAccessApplicationFooterLink({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory GetZeroTrustAccessApplicationFooterLink.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationFooterLink(
      name: pulumi.Input.fromValue(map['name'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
