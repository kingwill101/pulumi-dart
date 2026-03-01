// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_algorithm.dart';
import 'load_balancer_target.dart';

/// {@template pulumi_index_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_index_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// Configuration of the algorithm the Load Balancer use.
  final pulumi.Input<LoadBalancerAlgorithm>? algorithm;
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  final pulumi.Input<bool>? deleteProtection;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Type of the Load Balancer.
  final pulumi.Input<String> loadBalancerType;
  /// The location name of the Load Balancer. Require when no network_zone is set. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the Load Balancer.
  final pulumi.Input<String>? name;
  /// The Network Zone of the Load Balancer. Require when no location is set.
  final pulumi.Input<String>? networkZone;
  final pulumi.Input<List<LoadBalancerTarget>>? targets;

  /// Creates a new [LoadBalancerArgs].
  /// [algorithm] Configuration of the algorithm the Load Balancer use.
  /// [deleteProtection] Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [loadBalancerType] Type of the Load Balancer.
  /// [location] The location name of the Load Balancer. Require when no network_zone is set. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Load Balancer.
  /// [networkZone] The Network Zone of the Load Balancer. Require when no location is set.
  /// [targets] Optional.
  LoadBalancerArgs({
    pulumi.Output<LoadBalancerAlgorithm>? algorithm,
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> loadBalancerType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkZone,
    pulumi.Output<List<LoadBalancerTarget>>? targets,
  }) :
      algorithm = pulumi.Input.asOptionalInput<LoadBalancerAlgorithm>(algorithm),
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      loadBalancerType = pulumi.Input.asInput<String>(loadBalancerType),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkZone = pulumi.Input.asOptionalInput<String>(networkZone),
      targets = pulumi.Input.asOptionalInput<List<LoadBalancerTarget>>(targets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<LoadBalancerAlgorithm, Map<String, dynamic>>(algorithm, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'labels': ?labels,
      'loadBalancerType': loadBalancerType,
      'location': ?location,
      'name': ?name,
      'networkZone': ?networkZone,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<LoadBalancerTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      algorithm: map['algorithm'] == null ? null : pulumi.Output.create<LoadBalancerAlgorithm>(LoadBalancerAlgorithm.fromMap((map['algorithm'] as Map).cast<String, dynamic>())),
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      loadBalancerType: pulumi.Output.create<String>(map['loadBalancerType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkZone: map['networkZone'] == null ? null : pulumi.Output.create<String>(map['networkZone'] as String),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<LoadBalancerTarget>>(pulumi.Input.decodeList<LoadBalancerTarget>(map['targets'], (value) => LoadBalancerTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

