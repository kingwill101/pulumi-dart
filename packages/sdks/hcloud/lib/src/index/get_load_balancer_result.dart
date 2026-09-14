// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_algorithm.dart';
import 'get_load_balancer_service.dart';
import 'get_load_balancer_target.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  /// (Optional) Configuration of the algorithm the Load Balancer use.
  final List<GetLoadBalancerAlgorithm>? algorithms;
  /// (bool) Whether delete protection is enabled.
  final bool? deleteProtection;
  /// (int) Unique ID of the Load Balancer.
  final int? id;
  /// (string) IPv4 Address of the Load Balancer.
  final String? ipv4;
  /// (string) IPv4 Address of the Load Balancer.
  final String? ipv6;
  /// (map) User-defined labels (key-value pairs) .
  final Map<String, String>? labels;
  /// (string) Name of the Type of the Load Balancer.
  final String? loadBalancerType;
  /// (string) Name of the location the Load Balancer is in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final String? location;
  /// (string) Name of the Load Balancer.
  final String? name;
  /// (int) ID of the first private network that this Load Balancer is connected to.
  final int? networkId;
  /// (string) IP of the Load Balancer in the first private network that it is connected to.
  final String? networkIp;
  final String? networkZone;
  /// (list) List of services a Load Balancer provides.
  final List<GetLoadBalancerService>? services;
  /// (list) List of targets of the Load Balancer.
  final List<GetLoadBalancerTarget>? targets;
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
  /// [networkZone] Optional.
  /// [services] (list) List of services a Load Balancer provides.
  /// [targets] (list) List of targets of the Load Balancer.
  /// [withSelector] Optional.
  const GetLoadBalancerResult({
    this.algorithms,
    this.deleteProtection,
    this.id,
    this.ipv4,
    this.ipv6,
    this.labels,
    this.loadBalancerType,
    this.location,
    this.name,
    this.networkId,
    this.networkIp,
    this.networkZone,
    this.services,
    this.targets,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithms': ?(() { final guardedValue = algorithms; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerAlgorithm, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deleteProtection': ?deleteProtection,
      'id': ?id,
      'ipv4': ?ipv4,
      'ipv6': ?ipv6,
      'labels': ?labels,
      'loadBalancerType': ?loadBalancerType,
      'location': ?location,
      'name': ?name,
      'networkId': ?networkId,
      'networkIp': ?networkIp,
      'networkZone': ?networkZone,
      'services': ?(() { final guardedValue = services; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerService, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'targets': ?(() { final guardedValue = targets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerTarget, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'withSelector': ?withSelector,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      algorithms: (() { final guardedValue = map['algorithms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerAlgorithm>(guardedValue, (value) => GetLoadBalancerAlgorithm.fromMap((value as Map).cast<String, dynamic>())); })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      networkIp: (() { final guardedValue = map['networkIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkZone: (() { final guardedValue = map['networkZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerService>(guardedValue, (value) => GetLoadBalancerService.fromMap((value as Map).cast<String, dynamic>())); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerTarget>(guardedValue, (value) => GetLoadBalancerTarget.fromMap((value as Map).cast<String, dynamic>())); })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
