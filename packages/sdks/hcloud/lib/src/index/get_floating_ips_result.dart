// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_floating_ips_floating_ip.dart';

/// Result data returned by getFloatingIps.
class GetFloatingIpsResult {
  /// (list) List of all matching floating ips. See `data.hcloud_floating_ip` for schema.
  final List<GetFloatingIpsFloatingIp> floatingIps;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? withSelector;

  /// Creates a new [GetFloatingIpsResult].
  /// [floatingIps] (list) List of all matching floating ips. See `data.hcloud_floating_ip` for schema.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [withSelector] Optional.
  GetFloatingIpsResult({
    required this.floatingIps,
    required this.id,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatingIps':
          pulumi.Input.encodeList<
            GetFloatingIpsFloatingIp,
            Map<String, dynamic>
          >(floatingIps, (value) => value.toMap()),
      'id': id,
      'withSelector': ?withSelector,
    };
  }

  factory GetFloatingIpsResult.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpsResult(
      floatingIps: pulumi.Input.decodeList<GetFloatingIpsFloatingIp>(
        map['floatingIps']!,
        (value) => GetFloatingIpsFloatingIp.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      withSelector: (() {
        final guardedValue = map['withSelector'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
