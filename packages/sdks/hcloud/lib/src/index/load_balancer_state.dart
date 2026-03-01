// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_algorithm.dart';
import 'load_balancer_target.dart';

/// Input properties used for looking up and filtering LoadBalancer resources.
class LoadBalancerState {
  /// Configuration of the algorithm the Load Balancer use.
  final pulumi.Input<LoadBalancerAlgorithm>? algorithm;
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  final pulumi.Input<bool>? deleteProtection;
  /// (string) IPv4 Address of the Load Balancer.
  final pulumi.Input<String>? ipv4;
  /// (string) IPv6 Address of the Load Balancer.
  final pulumi.Input<String>? ipv6;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Type of the Load Balancer.
  final pulumi.Input<String>? loadBalancerType;
  /// The location name of the Load Balancer. Require when no network_zone is set. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the Load Balancer.
  final pulumi.Input<String>? name;
  /// (int) ID of the first private network that this Load Balancer is connected to.
  final pulumi.Input<int>? networkId;
  /// (string) IP of the Load Balancer in the first private network that it is connected to.
  final pulumi.Input<String>? networkIp;
  /// The Network Zone of the Load Balancer. Require when no location is set.
  final pulumi.Input<String>? networkZone;
  final pulumi.Input<List<LoadBalancerTarget>>? targets;

  /// Creates a new [LoadBalancerState].
  /// [algorithm] Configuration of the algorithm the Load Balancer use.
  /// [deleteProtection] Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  /// [ipv4] (string) IPv4 Address of the Load Balancer.
  /// [ipv6] (string) IPv6 Address of the Load Balancer.
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [loadBalancerType] Type of the Load Balancer.
  /// [location] The location name of the Load Balancer. Require when no network_zone is set. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Load Balancer.
  /// [networkId] (int) ID of the first private network that this Load Balancer is connected to.
  /// [networkIp] (string) IP of the Load Balancer in the first private network that it is connected to.
  /// [networkZone] The Network Zone of the Load Balancer. Require when no location is set.
  /// [targets] Optional.
  LoadBalancerState({
    pulumi.Output<LoadBalancerAlgorithm>? algorithm,
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<String>? ipv4,
    pulumi.Output<String>? ipv6,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? loadBalancerType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<int>? networkId,
    pulumi.Output<String>? networkIp,
    pulumi.Output<String>? networkZone,
    pulumi.Output<List<LoadBalancerTarget>>? targets,
  }) :
      algorithm = pulumi.Input.asOptionalInput<LoadBalancerAlgorithm>(algorithm),
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      ipv4 = pulumi.Input.asOptionalInput<String>(ipv4),
      ipv6 = pulumi.Input.asOptionalInput<String>(ipv6),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      loadBalancerType = pulumi.Input.asOptionalInput<String>(loadBalancerType),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkId = pulumi.Input.asOptionalInput<int>(networkId),
      networkIp = pulumi.Input.asOptionalInput<String>(networkIp),
      networkZone = pulumi.Input.asOptionalInput<String>(networkZone),
      targets = pulumi.Input.asOptionalInput<List<LoadBalancerTarget>>(targets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<LoadBalancerAlgorithm, Map<String, dynamic>>(algorithm, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'ipv4': ?ipv4,
      'ipv6': ?ipv6,
      'labels': ?labels,
      'loadBalancerType': ?loadBalancerType,
      'location': ?location,
      'name': ?name,
      'networkId': ?networkId,
      'networkIp': ?networkIp,
      'networkZone': ?networkZone,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<LoadBalancerTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerState(
      algorithm: map['algorithm'] == null ? null : pulumi.Output.create<LoadBalancerAlgorithm>(LoadBalancerAlgorithm.fromMap((map['algorithm'] as Map).cast<String, dynamic>())),
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      ipv4: map['ipv4'] == null ? null : pulumi.Output.create<String>(map['ipv4'] as String),
      ipv6: map['ipv6'] == null ? null : pulumi.Output.create<String>(map['ipv6'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      loadBalancerType: map['loadBalancerType'] == null ? null : pulumi.Output.create<String>(map['loadBalancerType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<int>(map['networkId'] as int),
      networkIp: map['networkIp'] == null ? null : pulumi.Output.create<String>(map['networkIp'] as String),
      networkZone: map['networkZone'] == null ? null : pulumi.Output.create<String>(map['networkZone'] as String),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<LoadBalancerTarget>>(pulumi.Input.decodeList<LoadBalancerTarget>(map['targets'], (value) => LoadBalancerTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

