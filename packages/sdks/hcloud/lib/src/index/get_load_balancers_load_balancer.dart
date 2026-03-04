// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_load_balancer_algorithm.dart';
import 'get_load_balancers_load_balancer_service.dart';
import 'get_load_balancers_load_balancer_target.dart';

class GetLoadBalancersLoadBalancer {
  final pulumi.Input<List<GetLoadBalancersLoadBalancerAlgorithm>> algorithms;
  final pulumi.Input<bool> deleteProtection;
  final pulumi.Input<int> id;
  final pulumi.Input<String> ipv4;
  final pulumi.Input<String> ipv6;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String> loadBalancerType;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? name;
  final pulumi.Input<int> networkId;
  final pulumi.Input<String> networkIp;
  final pulumi.Input<String> networkZone;
  final pulumi.Input<List<GetLoadBalancersLoadBalancerService>> services;
  final pulumi.Input<List<GetLoadBalancersLoadBalancerTarget>> targets;

  /// Creates a new [GetLoadBalancersLoadBalancer].
  /// [algorithms] Required.
  /// [deleteProtection] Required.
  /// [id] Required.
  /// [ipv4] Required.
  /// [ipv6] Required.
  /// [labels] Required.
  /// [loadBalancerType] Required.
  /// [location] Required.
  /// [name] Optional.
  /// [networkId] Required.
  /// [networkIp] Required.
  /// [networkZone] Required.
  /// [services] Required.
  /// [targets] Required.
  GetLoadBalancersLoadBalancer({
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithms':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersLoadBalancerAlgorithm>,
            List<Map<String, dynamic>>
          >(
            algorithms,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersLoadBalancerAlgorithm,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'services':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersLoadBalancerService>,
            List<Map<String, dynamic>>
          >(
            services,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersLoadBalancerService,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targets':
          pulumi.Input.mapInputValue<
            List<GetLoadBalancersLoadBalancerTarget>,
            List<Map<String, dynamic>>
          >(
            targets,
            (value) =>
                pulumi.Input.encodeList<
                  GetLoadBalancersLoadBalancerTarget,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetLoadBalancersLoadBalancer.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancer(
      algorithms: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetLoadBalancersLoadBalancerAlgorithm>(
          map['algorithms']!,
          (value) => GetLoadBalancersLoadBalancerAlgorithm.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      deleteProtection: pulumi.Input.fromValue(map['deleteProtection'] as bool),
      id: pulumi.Input.fromValue(map['id'] as int),
      ipv4: pulumi.Input.fromValue(map['ipv4'] as String),
      ipv6: pulumi.Input.fromValue(map['ipv6'] as String),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      loadBalancerType: pulumi.Input.fromValue(
        map['loadBalancerType'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkId: pulumi.Input.fromValue(map['networkId'] as int),
      networkIp: pulumi.Input.fromValue(map['networkIp'] as String),
      networkZone: pulumi.Input.fromValue(map['networkZone'] as String),
      services: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetLoadBalancersLoadBalancerService>(
          map['services']!,
          (value) => GetLoadBalancersLoadBalancerService.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      targets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetLoadBalancersLoadBalancerTarget>(
          map['targets']!,
          (value) => GetLoadBalancersLoadBalancerTarget.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
