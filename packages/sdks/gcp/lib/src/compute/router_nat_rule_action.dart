// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterNatRuleAction {
  /// A list of URLs of the IP resources used for this NAT rule.
  /// These IP addresses must be valid static external IP addresses assigned to the project.
  /// This field is used for public NAT.
  final pulumi.Input<List<String>>? sourceNatActiveIps;
  /// A list of URLs of the subnetworks used as source ranges for this NAT Rule.
  /// These subnetworks must have purpose set to PRIVATE_NAT.
  /// This field is used for private NAT.
  final pulumi.Input<List<String>>? sourceNatActiveRanges;
  /// A list of URLs of the IP resources to be drained.
  /// These IPs must be valid static external IPs that have been assigned to the NAT.
  /// These IPs should be used for updating/patching a NAT rule only.
  /// This field is used for public NAT.
  final pulumi.Input<List<String>>? sourceNatDrainIps;
  /// A list of URLs of subnetworks representing source ranges to be drained.
  /// This is only supported on patch/update, and these subnetworks must have previously been used as active ranges in this NAT Rule.
  /// This field is used for private NAT.
  final pulumi.Input<List<String>>? sourceNatDrainRanges;

  /// Creates a new [RouterNatRuleAction].
  /// [sourceNatActiveIps] A list of URLs of the IP resources used for this NAT rule.
  /// [sourceNatActiveRanges] A list of URLs of the subnetworks used as source ranges for this NAT Rule.
  /// [sourceNatDrainIps] A list of URLs of the IP resources to be drained.
  /// [sourceNatDrainRanges] A list of URLs of subnetworks representing source ranges to be drained.
  RouterNatRuleAction({
    this.sourceNatActiveIps,
    this.sourceNatActiveRanges,
    this.sourceNatDrainIps,
    this.sourceNatDrainRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceNatActiveIps': ?sourceNatActiveIps,
      'sourceNatActiveRanges': ?sourceNatActiveRanges,
      'sourceNatDrainIps': ?sourceNatDrainIps,
      'sourceNatDrainRanges': ?sourceNatDrainRanges,
    };
  }

  factory RouterNatRuleAction.fromMap(Map<String, dynamic> map) {
    return RouterNatRuleAction(
      sourceNatActiveIps: map['sourceNatActiveIps'] == null ? null : ((map['sourceNatActiveIps']! as List).cast<String>()).input(),
      sourceNatActiveRanges: map['sourceNatActiveRanges'] == null ? null : ((map['sourceNatActiveRanges']! as List).cast<String>()).input(),
      sourceNatDrainIps: map['sourceNatDrainIps'] == null ? null : ((map['sourceNatDrainIps']! as List).cast<String>()).input(),
      sourceNatDrainRanges: map['sourceNatDrainRanges'] == null ? null : ((map['sourceNatDrainRanges']! as List).cast<String>()).input(),
    );
  }
}

