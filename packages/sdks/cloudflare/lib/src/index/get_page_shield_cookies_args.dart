// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_page_shield_cookies_get_page_shield_cookies_args_doc}
/// Arguments for getPageShieldCookies.
/// {@endtemplate}
/// {@macro pulumi_index_get_page_shield_cookies_get_page_shield_cookies_args_doc}
class GetPageShieldCookiesArgs {
  /// Identifier
  final pulumi.Input<String> cookieId;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetPageShieldCookiesArgs].
  /// [cookieId] Identifier
  /// [zoneId] Identifier
  const GetPageShieldCookiesArgs({
    required this.cookieId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieId': cookieId,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldCookiesArgs.fromMap(Map<String, dynamic> map) {
    return GetPageShieldCookiesArgs(
      cookieId: pulumi.Input.fromValue(map['cookieId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
