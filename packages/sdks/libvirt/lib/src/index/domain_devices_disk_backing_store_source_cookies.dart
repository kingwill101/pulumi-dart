// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_cookies_cookie.dart';

class DomainDevicesDiskBackingStoreSourceCookies {
  /// Configures cookies for the backing store source, allowing additional parameters for storage.
  final pulumi.Input<List<DomainDevicesDiskBackingStoreSourceCookiesCookie>>? cookies;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceCookies].
  /// [cookies] Configures cookies for the backing store source, allowing additional parameters for storage.
  DomainDevicesDiskBackingStoreSourceCookies({
    this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookies': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskBackingStoreSourceCookiesCookie>, List<Map<String, dynamic>>>(cookies, (value) => pulumi.Input.encodeList<DomainDevicesDiskBackingStoreSourceCookiesCookie, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceCookies.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceCookies(
      cookies: map['cookies'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskBackingStoreSourceCookiesCookie>(map['cookies'], (value) => DomainDevicesDiskBackingStoreSourceCookiesCookie.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

