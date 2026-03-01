// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  final pulumi.Input<bool>? deleteProtection;
  /// Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  final pulumi.Input<bool>? exposeRoutesToVswitch;
  /// IP Range of the whole Network which must span all included subnets and route destinations. Must be one of the private ipv4 ranges of RFC1918.
  final pulumi.Input<String>? ipRange;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Network to create (must be unique per project).
  final pulumi.Input<String>? name;

  /// Creates a new [NetworkState].
  /// [deleteProtection] Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  /// [exposeRoutesToVswitch] Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  /// [ipRange] IP Range of the whole Network which must span all included subnets and route destinations. Must be one of the private ipv4 ranges of RFC1918.
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Network to create (must be unique per project).
  NetworkState({
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<bool>? exposeRoutesToVswitch,
    pulumi.Output<String>? ipRange,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
  }) :
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      exposeRoutesToVswitch = pulumi.Input.asOptionalInput<bool>(exposeRoutesToVswitch),
      ipRange = pulumi.Input.asOptionalInput<String>(ipRange),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': ?deleteProtection,
      'exposeRoutesToVswitch': ?exposeRoutesToVswitch,
      'ipRange': ?ipRange,
      'labels': ?labels,
      'name': ?name,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      exposeRoutesToVswitch: map['exposeRoutesToVswitch'] == null ? null : pulumi.Output.create<bool>(map['exposeRoutesToVswitch'] as bool),
      ipRange: map['ipRange'] == null ? null : pulumi.Output.create<String>(map['ipRange'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

