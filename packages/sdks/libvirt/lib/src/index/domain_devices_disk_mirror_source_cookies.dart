// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_cookies_cookie.dart';

class DomainDevicesDiskMirrorSourceCookies {
  /// Configures cookies for the backing store source, allowing additional parameters for storage.
  final pulumi.Input<List<DomainDevicesDiskMirrorSourceCookiesCookie>>? cookies;

  /// Creates a new [DomainDevicesDiskMirrorSourceCookies].
  /// [cookies] Configures cookies for the backing store source, allowing additional parameters for storage.
  const DomainDevicesDiskMirrorSourceCookies({
    this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookies': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorSourceCookiesCookie>, List<Map<String, dynamic>>>(cookies, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceCookiesCookie, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorSourceCookies.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceCookies(
      cookies: (() { final guardedValue = map['cookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceCookiesCookie>(guardedValue, (value) => DomainDevicesDiskMirrorSourceCookiesCookie.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
