// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterNatAddress resources.
class RouterNatAddressState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  final pulumi.Input<List<String>?>? drainNatIps;
  /// Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// natIpAllocateOption is set to MANUAL_ONLY.
  final pulumi.Input<List<String>?>? natIps;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Region where the NAT service reside.
  final pulumi.Input<String?>? region;
  /// The name of the Cloud Router in which the referenced NAT service is configured.
  final pulumi.Input<String?>? router;
  /// The name of the Nat service in which this address will be configured.
  final pulumi.Input<String?>? routerNat;

  /// Creates a new [RouterNatAddressState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [drainNatIps] A list of URLs of the IP resources to be drained. These IPs must be
  /// [natIps] Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where the NAT service reside.
  /// [router] The name of the Cloud Router in which the referenced NAT service is configured.
  /// [routerNat] The name of the Nat service in which this address will be configured.
  const RouterNatAddressState({
    this.deletionPolicy,
    this.drainNatIps,
    this.natIps,
    this.project,
    this.region,
    this.router,
    this.routerNat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drainNatIps: (() { final guardedValue = map['drainNatIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      natIps: (() { final guardedValue = map['natIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerNat: (() { final guardedValue = map['routerNat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
