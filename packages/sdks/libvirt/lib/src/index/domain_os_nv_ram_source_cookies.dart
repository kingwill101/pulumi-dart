// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_cookies_cookie.dart';

class DomainOsNvRamSourceCookies {
  /// Configures cookies for the backing store source, allowing additional parameters for storage.
  final pulumi.Input<List<DomainOsNvRamSourceCookiesCookie>>? cookies;

  /// Creates a new [DomainOsNvRamSourceCookies].
  /// [cookies] Configures cookies for the backing store source, allowing additional parameters for storage.
  DomainOsNvRamSourceCookies({
    this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookies': ?pulumi.Input.mapOptionalInputValue<List<DomainOsNvRamSourceCookiesCookie>, List<Map<String, dynamic>>>(cookies, (value) => pulumi.Input.encodeList<DomainOsNvRamSourceCookiesCookie, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainOsNvRamSourceCookies.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceCookies(
      cookies: map['cookies'] == null ? null : (pulumi.Input.decodeList<DomainOsNvRamSourceCookiesCookie>(map['cookies']!, (value) => DomainOsNvRamSourceCookiesCookie.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

