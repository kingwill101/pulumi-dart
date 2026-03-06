// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_policy_response_accesscontextmanager_v1beta.dart';

/// A condition necessary for an `AccessLevel` to be granted. The Condition is an AND over its fields. So a Condition is true if: 1) the request IP is from one of the listed subnetworks AND 2) the originating device complies with the listed device policy AND 3) all listed access levels are granted AND 4) the request was sent at a time allowed by the DateTimeRestriction.
class ConditionResponseAccesscontextmanagerV1beta {
  /// Device specific restrictions, all restrictions must hold for the Condition to be true. If not specified, all devices are allowed.
  final pulumi.Input<DevicePolicyResponseAccesscontextmanagerV1beta> devicePolicy;
  /// CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly, for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32" is not. The originating IP of a request must be in one of the listed subnets in order for this Condition to be true. If empty, all IP addresses are allowed.
  final pulumi.Input<List<String>> ipSubnetworks;
  /// The request must be made by one of the provided user or service accounts. Groups are not supported. Syntax: `user:{emailid}` `serviceAccount:{emailid}` If not specified, a request may come from any user.
  final pulumi.Input<List<String>> members;
  /// Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields. Any non-empty field criteria evaluating to false will result in the Condition to be satisfied. Defaults to false.
  final pulumi.Input<bool> negate;
  /// The request must originate from one of the provided countries/regions. Must be valid ISO 3166-1 alpha-2 codes.
  final pulumi.Input<List<String>> regions;
  /// A list of other access levels defined in the same `Policy`, referenced by resource name. Referencing an `AccessLevel` which does not exist is an error. All access levels listed must be granted for the Condition to be true. Example: "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  final pulumi.Input<List<String>> requiredAccessLevels;

  /// Creates a new [ConditionResponseAccesscontextmanagerV1beta].
  /// [devicePolicy] Device specific restrictions, all restrictions must hold for the Condition to be true. If not specified, all devices are allowed.
  /// [ipSubnetworks] CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly, for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32" is not. The originating IP of a request must be in one of the listed subnets in order for this Condition to be true. If empty, all IP addresses are allowed.
  /// [members] The request must be made by one of the provided user or service accounts. Groups are not supported. Syntax: `user:{emailid}` `serviceAccount:{emailid}` If not specified, a request may come from any user.
  /// [negate] Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields. Any non-empty field criteria evaluating to false will result in the Condition to be satisfied. Defaults to false.
  /// [regions] The request must originate from one of the provided countries/regions. Must be valid ISO 3166-1 alpha-2 codes.
  /// [requiredAccessLevels] A list of other access levels defined in the same `Policy`, referenced by resource name. Referencing an `AccessLevel` which does not exist is an error. All access levels listed must be granted for the Condition to be true. Example: "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
  const ConditionResponseAccesscontextmanagerV1beta({
    required this.devicePolicy,
    required this.ipSubnetworks,
    required this.members,
    required this.negate,
    required this.regions,
    required this.requiredAccessLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devicePolicy': pulumi.Input.mapInputValue<DevicePolicyResponseAccesscontextmanagerV1beta, Map<String, dynamic>>(devicePolicy, (value) => value.toMap()),
      'ipSubnetworks': ipSubnetworks,
      'members': members,
      'negate': negate,
      'regions': regions,
      'requiredAccessLevels': requiredAccessLevels,
    };
  }

  factory ConditionResponseAccesscontextmanagerV1beta.fromMap(Map<String, dynamic> map) {
    return ConditionResponseAccesscontextmanagerV1beta(
      devicePolicy: pulumi.Input.fromValue(DevicePolicyResponseAccesscontextmanagerV1beta.fromMap((map['devicePolicy']! as Map).cast<String, dynamic>())),
      ipSubnetworks: pulumi.Input.fromValue((map['ipSubnetworks'] as List).cast<String>()),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      negate: pulumi.Input.fromValue(map['negate'] as bool),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      requiredAccessLevels: pulumi.Input.fromValue((map['requiredAccessLevels'] as List).cast<String>()),
    );
  }
}

