// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterNatAddress resources.
class RouterNatAddressState {
  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  final pulumi.Input<List<String>>? drainNatIps;
  /// Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// natIpAllocateOption is set to MANUAL_ONLY.
  final pulumi.Input<List<String>>? natIps;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where the NAT service reside.
  final pulumi.Input<String>? region;
  /// The name of the Cloud Router in which the referenced NAT service is configured.
  final pulumi.Input<String>? router;
  /// The name of the Nat service in which this address will be configured.
  final pulumi.Input<String>? routerNat;

  /// Creates a new [RouterNatAddressState].
  /// [drainNatIps] A list of URLs of the IP resources to be drained. These IPs must be
  /// [natIps] Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the NAT service reside.
  /// [router] The name of the Cloud Router in which the referenced NAT service is configured.
  /// [routerNat] The name of the Nat service in which this address will be configured.
  RouterNatAddressState({
    pulumi.Output<List<String>>? drainNatIps,
    pulumi.Output<List<String>>? natIps,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? router,
    pulumi.Output<String>? routerNat,
  }) :
      drainNatIps = pulumi.Input.asOptionalInput<List<String>>(drainNatIps),
      natIps = pulumi.Input.asOptionalInput<List<String>>(natIps),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      router = pulumi.Input.asOptionalInput<String>(router),
      routerNat = pulumi.Input.asOptionalInput<String>(routerNat);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainNatIps': ?drainNatIps,
      'natIps': ?natIps,
      'project': ?project,
      'region': ?region,
      'router': ?router,
      'routerNat': ?routerNat,
    };
  }

  factory RouterNatAddressState.fromMap(Map<String, dynamic> map) {
    return RouterNatAddressState(
      drainNatIps: map['drainNatIps'] == null ? null : pulumi.Output.create<List<String>>((map['drainNatIps'] as List).cast<String>()),
      natIps: map['natIps'] == null ? null : pulumi.Output.create<List<String>>((map['natIps'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      router: map['router'] == null ? null : pulumi.Output.create<String>(map['router'] as String),
      routerNat: map['routerNat'] == null ? null : pulumi.Output.create<String>(map['routerNat'] as String),
    );
  }
}

