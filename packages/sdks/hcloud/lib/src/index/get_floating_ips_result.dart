// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_floating_ips_floating_ip.dart';

/// Result data returned by getFloatingIps.
class GetFloatingIpsResult {
  /// (list) List of all matching floating ips. See `data.hcloud_floating_ip` for schema.
  final List<GetFloatingIpsFloatingIp>? floatingIps;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? withSelector;

  /// Creates a new [GetFloatingIpsResult].
  /// [floatingIps] (list) List of all matching floating ips. See `data.hcloud_floating_ip` for schema.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [withSelector] Optional.
  const GetFloatingIpsResult({
    this.floatingIps,
    this.id,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatingIps': ?(() { final guardedValue = floatingIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFloatingIpsFloatingIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'withSelector': ?withSelector,
    };
  }

  factory GetFloatingIpsResult.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpsResult(
      floatingIps: (() { final guardedValue = map['floatingIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFloatingIpsFloatingIp>(guardedValue, (value) => GetFloatingIpsFloatingIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
