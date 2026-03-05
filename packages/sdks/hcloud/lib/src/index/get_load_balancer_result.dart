// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_algorithm.dart';
import 'get_load_balancer_service.dart';
import 'get_load_balancer_target.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  /// (Optional) Configuration of the algorithm the Load Balancer use.
  final List<GetLoadBalancerAlgorithm> algorithms;
  /// (bool) Whether delete protection is enabled.
  final bool deleteProtection;
  /// (int) Unique ID of the Load Balancer.
  final int id;
  /// (string) IPv4 Address of the Load Balancer.
  final String ipv4;
  /// (string) IPv4 Address of the Load Balancer.
  final String ipv6;
  /// (map) User-defined labels (key-value pairs) .
  final Map<String, String> labels;
  /// (string) Name of the Type of the Load Balancer.
  final String loadBalancerType;
  /// (string) Name of the location the Load Balancer is in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final String location;
  /// (string) Name of the Load Balancer.
  final String? name;
  /// (int) ID of the first private network that this Load Balancer is connected to.
  final int networkId;
  /// (string) IP of the Load Balancer in the first private network that it is connected to.
  final String networkIp;
  final String networkZone;
  /// (list) List of services a Load Balancer provides.
  final List<GetLoadBalancerService> services;
  /// (list) List of targets of the Load Balancer.
  final List<GetLoadBalancerTarget> targets;
  final String? withSelector;

  /// Creates a new [GetLoadBalancerResult].
  /// [algorithms] (Optional) Configuration of the algorithm the Load Balancer use.
  /// [deleteProtection] (bool) Whether delete protection is enabled.
  /// [id] (int) Unique ID of the Load Balancer.
  /// [ipv4] (string) IPv4 Address of the Load Balancer.
  /// [ipv6] (string) IPv4 Address of the Load Balancer.
  /// [labels] (map) User-defined labels (key-value pairs) .
  /// [loadBalancerType] (string) Name of the Type of the Load Balancer.
  /// [location] (string) Name of the location the Load Balancer is in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] (string) Name of the Load Balancer.
  /// [networkId] (int) ID of the first private network that this Load Balancer is connected to.
  /// [networkIp] (string) IP of the Load Balancer in the first private network that it is connected to.
  /// [networkZone] Required.
  /// [services] (list) List of services a Load Balancer provides.
  /// [targets] (list) List of targets of the Load Balancer.
  /// [withSelector] Optional.
  GetLoadBalancerResult({
    required this.algorithms,
    required this.deleteProtection,
    required this.id,
    required this.ipv4,
    required this.ipv6,
    required this.labels,
    required this.loadBalancerType,
    required this.location,
    this.name,
    required this.networkId,
    required this.networkIp,
    required this.networkZone,
    required this.services,
    required this.targets,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithms': pulumi.Input.encodeList<GetLoadBalancerAlgorithm, Map<String, dynamic>>(algorithms, (value) => value.toMap()),
      'deleteProtection': deleteProtection,
      'id': id,
      'ipv4': ipv4,
      'ipv6': ipv6,
      'labels': labels,
      'loadBalancerType': loadBalancerType,
      'location': location,
      'name': ?name,
      'networkId': networkId,
      'networkIp': networkIp,
      'networkZone': networkZone,
      'services': pulumi.Input.encodeList<GetLoadBalancerService, Map<String, dynamic>>(services, (value) => value.toMap()),
      'targets': pulumi.Input.encodeList<GetLoadBalancerTarget, Map<String, dynamic>>(targets, (value) => value.toMap()),
      'withSelector': ?withSelector,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      algorithms: pulumi.Input.decodeList<GetLoadBalancerAlgorithm>(map['algorithms']!, (value) => GetLoadBalancerAlgorithm.fromMap((value as Map).cast<String, dynamic>())),
      deleteProtection: map['deleteProtection'] as bool,
      id: map['id'] as int,
      ipv4: map['ipv4'] as String,
      ipv6: map['ipv6'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      loadBalancerType: map['loadBalancerType'] as String,
      location: map['location'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkId: map['networkId'] as int,
      networkIp: map['networkIp'] as String,
      networkZone: map['networkZone'] as String,
      services: pulumi.Input.decodeList<GetLoadBalancerService>(map['services']!, (value) => GetLoadBalancerService.fromMap((value as Map).cast<String, dynamic>())),
      targets: pulumi.Input.decodeList<GetLoadBalancerTarget>(map['targets']!, (value) => GetLoadBalancerTarget.fromMap((value as Map).cast<String, dynamic>())),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

