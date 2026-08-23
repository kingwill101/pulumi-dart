// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_condition_device_policy.dart';
import 'access_level_condition_vpc_network_source.dart';

/// Input properties used for looking up and filtering AccessLevelCondition resources.
class AccessLevelConditionState {
  /// The name of the Access Level to add this condition to.
  final pulumi.Input<String>? accessLevel;
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Device specific restrictions, all restrictions must hold for
  /// the Condition to be true. If not specified, all devices are
  /// allowed.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelConditionDevicePolicy>? devicePolicy;
  /// A list of CIDR block IP subnetwork specification. May be IPv4
  /// or IPv6.
  /// Note that for a CIDR IP address block, the specified IP address
  /// portion must be properly truncated (i.e. all the host bits must
  /// be zero) or the input is considered malformed. For example,
  /// "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly,
  /// for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32"
  /// is not. The originating IP of a request must be in one of the
  /// listed subnets in order for this Condition to be true.
  /// If empty, all IP addresses are allowed.
  final pulumi.Input<List<String>>? ipSubnetworks;
  /// An allowed list of members (users, service accounts).
  /// Using groups is not supported yet.
  /// The signed-in user originating the request must be a part of one
  /// of the provided members. If not specified, a request may come
  /// from any user (logged in/not logged in, not present in any
  /// groups, etc.).
  /// Formats: `user:{emailid}`, `serviceAccount:{emailid}`
  final pulumi.Input<List<String>>? members;
  /// Whether to negate the Condition. If true, the Condition becomes
  /// a NAND over its non-empty fields, each field must be false for
  /// the Condition overall to be satisfied. Defaults to false.
  final pulumi.Input<bool>? negate;
  /// The request must originate from one of the provided
  /// countries/regions.
  /// Format: A valid ISO 3166-1 alpha-2 code.
  final pulumi.Input<List<String>>? regions;
  /// A list of other access levels defined in the same Policy,
  /// referenced by resource name. Referencing an AccessLevel which
  /// does not exist is an error. All access levels listed must be
  /// granted for the Condition to be true.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  final pulumi.Input<List<String>>? requiredAccessLevels;
  /// The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with `ipSubnetworks`.
  /// Structure is documented below.
  final pulumi.Input<List<AccessLevelConditionVpcNetworkSource>>? vpcNetworkSources;

  /// Creates a new [AccessLevelConditionState].
  /// [accessLevel] The name of the Access Level to add this condition to.
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [devicePolicy] Device specific restrictions, all restrictions must hold for
  /// [ipSubnetworks] A list of CIDR block IP subnetwork specification. May be IPv4
  /// [members] An allowed list of members (users, service accounts).
  /// [negate] Whether to negate the Condition. If true, the Condition becomes
  /// [regions] The request must originate from one of the provided
  /// [requiredAccessLevels] A list of other access levels defined in the same Policy,
  /// [vpcNetworkSources] The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with `ipSubnetworks`.
  const AccessLevelConditionState({
    this.accessLevel,
    this.accessPolicyId,
    this.deletionPolicy,
    this.devicePolicy,
    this.ipSubnetworks,
    this.members,
    this.negate,
    this.regions,
    this.requiredAccessLevels,
    this.vpcNetworkSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': ?accessLevel,
      'accessPolicyId': ?accessPolicyId,
      'deletionPolicy': ?deletionPolicy,
      'devicePolicy': ?pulumi.Input.mapOptionalInputValue<AccessLevelConditionDevicePolicy, Map<String, dynamic>>(devicePolicy, (value) => value.toMap()),
      'ipSubnetworks': ?ipSubnetworks,
      'members': ?members,
      'negate': ?negate,
      'regions': ?regions,
      'requiredAccessLevels': ?requiredAccessLevels,
      'vpcNetworkSources': ?pulumi.Input.mapOptionalInputValue<List<AccessLevelConditionVpcNetworkSource>, List<Map<String, dynamic>>>(vpcNetworkSources, (value) => pulumi.Input.encodeList<AccessLevelConditionVpcNetworkSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessLevelConditionState.fromMap(Map<String, dynamic> map) {
    return AccessLevelConditionState(
      accessLevel: (() { final guardedValue = map['accessLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessPolicyId: (() { final guardedValue = map['accessPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devicePolicy: (() { final guardedValue = map['devicePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessLevelConditionDevicePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipSubnetworks: (() { final guardedValue = map['ipSubnetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      negate: (() { final guardedValue = map['negate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requiredAccessLevels: (() { final guardedValue = map['requiredAccessLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcNetworkSources: (() { final guardedValue = map['vpcNetworkSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessLevelConditionVpcNetworkSource>(guardedValue, (value) => AccessLevelConditionVpcNetworkSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
