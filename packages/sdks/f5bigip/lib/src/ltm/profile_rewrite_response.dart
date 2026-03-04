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
  ProfileRewriteResponse({this.rewriteContent, this.rewriteHeaders});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewriteContent': ?rewriteContent,
      'rewriteHeaders': ?rewriteHeaders,
    };
  }

  factory ProfileRewriteResponse.fromMap(Map<String, dynamic> map) {
    return ProfileRewriteResponse(
      rewriteContent: (() {
        final guardedValue = map['rewriteContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rewriteHeaders: (() {
        final guardedValue = map['rewriteHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
