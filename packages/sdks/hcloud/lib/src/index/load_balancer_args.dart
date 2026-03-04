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
    this.algorithm,
    this.deleteProtection,
    this.labels,
    required this.loadBalancerType,
    this.location,
    this.name,
    this.networkZone,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerAlgorithm,
            Map<String, dynamic>
          >(algorithm, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'labels': ?labels,
      'loadBalancerType': loadBalancerType,
      'location': ?location,
      'name': ?name,
      'networkZone': ?networkZone,
      'targets':
          ?pulumi.Input.mapOptionalInputValue<
            List<LoadBalancerTarget>,
            List<Map<String, dynamic>>
          >(
            targets,
            (value) =>
                pulumi.Input.encodeList<
                  LoadBalancerTarget,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      algorithm: (() {
        final guardedValue = map['algorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerAlgorithm.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deleteProtection: (() {
        final guardedValue = map['deleteProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      loadBalancerType: pulumi.Input.fromValue(
        map['loadBalancerType'] as String,
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkZone: (() {
        final guardedValue = map['networkZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targets: (() {
        final guardedValue = map['targets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LoadBalancerTarget>(
            guardedValue,
            (value) => LoadBalancerTarget.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
