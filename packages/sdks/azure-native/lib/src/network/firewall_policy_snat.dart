// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private IP addresses/IP ranges to which traffic will not be SNAT.
class FirewallPolicySNAT {
  /// The operation mode for automatically learning private ranges to not be SNAT
  final pulumi.Input<String>? autoLearnPrivateRanges;
  /// List of private IP addresses/IP address ranges to not be SNAT.
  final pulumi.Input<List<String>>? privateRanges;

  /// Creates a new [FirewallPolicySNAT].
  /// [autoLearnPrivateRanges] The operation mode for automatically learning private ranges to not be SNAT
  /// [privateRanges] List of private IP addresses/IP address ranges to not be SNAT.
  FirewallPolicySNAT({
    this.autoLearnPrivateRanges,
    this.privateRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoLearnPrivateRanges': ?autoLearnPrivateRanges,
      'privateRanges': ?privateRanges,
    };
  }

  factory FirewallPolicySNAT.fromMap(Map<String, dynamic> map) {
    return FirewallPolicySNAT(
      autoLearnPrivateRanges: map['autoLearnPrivateRanges'] == null ? null : (map['autoLearnPrivateRanges'] as String).input(),
      privateRanges: map['privateRanges'] == null ? null : ((map['privateRanges'] as List).cast<String>()).input(),
    );
  }
}

