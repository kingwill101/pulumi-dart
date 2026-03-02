// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_cookies_cookie.dart';

class DomainDevicesDiskMirrorBackingStoreSourceCookies {
  /// Configures cookies for the backing store source, allowing additional parameters for storage.
  final pulumi.Input<List<DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie>>? cookies;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceCookies].
  /// [cookies] Configures cookies for the backing store source, allowing additional parameters for storage.
  DomainDevicesDiskMirrorBackingStoreSourceCookies({
    this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookies': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie>, List<Map<String, dynamic>>>(cookies, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceCookies.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceCookies(
      cookies: map['cookies'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie>(map['cookies']!, (value) => DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

