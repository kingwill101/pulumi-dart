// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileRewriteResponse {
  /// Enable to rewrite links in content in the response. Valid choices are: `enabled, disabled`
  final pulumi.Input<String>? rewriteContent;
  /// Enable to rewrite headers in the response. Valid choices are: `enabled, disabled`
  final pulumi.Input<String>? rewriteHeaders;

  /// Creates a new [ProfileRewriteResponse].
  /// [rewriteContent] Enable to rewrite links in content in the response. Valid choices are: `enabled, disabled`
  /// [rewriteHeaders] Enable to rewrite headers in the response. Valid choices are: `enabled, disabled`
  ProfileRewriteResponse({
    this.rewriteContent,
    this.rewriteHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewriteContent': ?rewriteContent,
      'rewriteHeaders': ?rewriteHeaders,
    };
  }

  factory ProfileRewriteResponse.fromMap(Map<String, dynamic> map) {
    return ProfileRewriteResponse(
      rewriteContent: map['rewriteContent'] == null ? null : (map['rewriteContent']! as String).input(),
      rewriteHeaders: map['rewriteHeaders'] == null ? null : (map['rewriteHeaders']! as String).input(),
    );
  }
}

