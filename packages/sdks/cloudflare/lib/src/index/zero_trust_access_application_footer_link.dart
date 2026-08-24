// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationFooterLink {
  /// The hypertext in the footer link.
  final pulumi.Input<String> name;
  /// the hyperlink in the footer link.
  final pulumi.Input<String> url;

  /// Creates a new [ZeroTrustAccessApplicationFooterLink].
  /// [name] The hypertext in the footer link.
  /// [url] the hyperlink in the footer link.
  const ZeroTrustAccessApplicationFooterLink({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory ZeroTrustAccessApplicationFooterLink.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationFooterLink(
      name: pulumi.Input.fromValue(map['name'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
