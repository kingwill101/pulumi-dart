// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_pools_result_origin_header.dart';

class GetLoadBalancerPoolsResultOrigin {
  /// The IP address (IPv4 or IPv6) of the origin, or its publicly addressable hostname. Hostnames entered here should resolve directly to the origin, and not be a hostname proxied by Cloudflare. To set an internal/reserved address, virtual*network*id must also be set.
  final pulumi.Input<String> address;
  /// This field shows up only if the origin is disabled. This field is set with the time the origin was disabled.
  final pulumi.Input<String> disabledAt;
  /// Whether to enable (the default) this origin within the pool. Disabled origins will not receive traffic and are excluded from health checks. The origin will only be disabled for the current pool.
  final pulumi.Input<bool> enabled;
  /// Whether to flatten CNAME records for this origin, resolving them to A/AAAA records before returning to the client. When true (the default), the director resolves CNAME addresses to their underlying A/AAAA records. When false, the origin address is returned as a raw CNAME record without resolution. This setting mirrors the DNS API record flattenCname setting.
  final pulumi.Input<bool> flattenCname;
  /// The request header is used to pass additional information with an HTTP request. Currently supported header is 'Host'.
  final pulumi.Input<GetLoadBalancerPoolsResultOriginHeader> header;
  /// A human-identifiable name for the origin.
  final pulumi.Input<String> name;
  /// The port for upstream connections. A value of 0 means the default port for the protocol will be used.
  final pulumi.Input<int> port;
  /// The virtual network subnet ID the origin belongs in. Virtual network must also belong to the account.
  final pulumi.Input<String> virtualNetworkId;
  /// The weight of this origin relative to other origins in the pool. Based on the configured weight the total traffic is distributed among origins within the pool.
  final pulumi.Input<double> weight;

  /// Creates a new [GetLoadBalancerPoolsResultOrigin].
  /// [address] The IP address (IPv4 or IPv6) of the origin, or its publicly addressable hostname. Hostnames entered here should resolve directly to the origin, and not be a hostname proxied by Cloudflare. To set an internal/reserved address, virtual*network*id must also be set.
  /// [disabledAt] This field shows up only if the origin is disabled. This field is set with the time the origin was disabled.
  /// [enabled] Whether to enable (the default) this origin within the pool. Disabled origins will not receive traffic and are excluded from health checks. The origin will only be disabled for the current pool.
  /// [flattenCname] Whether to flatten CNAME records for this origin, resolving them to A/AAAA records before returning to the client. When true (the default), the director resolves CNAME addresses to their underlying A/AAAA records. When false, the origin address is returned as a raw CNAME record without resolution. This setting mirrors the DNS API record flattenCname setting.
  /// [header] The request header is used to pass additional information with an HTTP request. Currently supported header is 'Host'.
  /// [name] A human-identifiable name for the origin.
  /// [port] The port for upstream connections. A value of 0 means the default port for the protocol will be used.
  /// [virtualNetworkId] The virtual network subnet ID the origin belongs in. Virtual network must also belong to the account.
  /// [weight] The weight of this origin relative to other origins in the pool. Based on the configured weight the total traffic is distributed among origins within the pool.
  const GetLoadBalancerPoolsResultOrigin({
    required this.address,
    required this.disabledAt,
    required this.enabled,
    required this.flattenCname,
    required this.header,
    required this.name,
    required this.port,
    required this.virtualNetworkId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'disabledAt': disabledAt,
      'enabled': enabled,
      'flattenCname': flattenCname,
      'header': pulumi.Input.mapInputValue<GetLoadBalancerPoolsResultOriginHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
      'name': name,
      'port': port,
      'virtualNetworkId': virtualNetworkId,
      'weight': weight,
    };
  }

  factory GetLoadBalancerPoolsResultOrigin.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolsResultOrigin(
      address: pulumi.Input.fromValue(map['address'] as String),
      disabledAt: pulumi.Input.fromValue(map['disabledAt'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      flattenCname: pulumi.Input.fromValue(map['flattenCname'] as bool),
      header: pulumi.Input.fromValue(GetLoadBalancerPoolsResultOriginHeader.fromMap((map['header']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      virtualNetworkId: pulumi.Input.fromValue(map['virtualNetworkId'] as String),
      weight: pulumi.Input.fromValue((map['weight'] as num).toDouble()),
    );
  }
}
