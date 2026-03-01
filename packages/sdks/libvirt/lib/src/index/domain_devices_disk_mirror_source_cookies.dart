// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_cookies_cookie.dart';

class DomainDevicesDiskMirrorSourceCookies {
  /// Configures cookies for the backing store source, allowing additional parameters for storage.
  final List<DomainDevicesDiskMirrorSourceCookiesCookie>? cookies;

  /// Creates a new [DomainDevicesDiskMirrorSourceCookies].
  /// [cookies] Configures cookies for the backing store source, allowing additional parameters for storage.
  DomainDevicesDiskMirrorSourceCookies({
    this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookies': ?cookies == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceCookiesCookie, Map<String, dynamic>>(cookies!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceCookies.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceCookies(
      cookies: map['cookies'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceCookiesCookie>(map['cookies'], (value) => DomainDevicesDiskMirrorSourceCookiesCookie.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

