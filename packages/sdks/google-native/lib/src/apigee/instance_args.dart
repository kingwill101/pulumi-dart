// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_peering_cidr_range.dart';

/// {@template pulumi_apigee_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_instance_args_doc}
class InstanceArgs {
  /// Optional. Customer accept list represents the list of projects (id/number) on customer side that can privately connect to the service attachment. It is an optional field which the customers can provide during the instance creation. By default, the customer project associated with the Apigee organization will be included to the list.
  final pulumi.Input<List<String>>? consumerAcceptList;
  /// Optional. Description of the instance.
  final pulumi.Input<String>? description;
  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only. Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  final pulumi.Input<String>? diskEncryptionKeyName;
  /// Optional. Display name for the instance.
  final pulumi.Input<String>? displayName;
  /// Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee instance. Providing CIDR ranges is optional. You can provide just /22 or /28 or both (or neither). Ranges you provide should be freely available as part of a larger named range you have allocated to the Service Networking peering. If this parameter is not provided, Apigee automatically requests an available /22 and /28 CIDR block from Service Networking. Use the /22 CIDR block for configuring your firewall needs to allow traffic from Apigee. Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`
  final pulumi.Input<String>? ipRange;
  /// Compute Engine location where the instance resides.
  final pulumi.Input<String>? location;
  /// Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\d]$`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.
  final pulumi.Input<InstancePeeringCidrRange>? peeringCidrRange;

  /// Creates a new [InstanceArgs].
  /// [consumerAcceptList] Optional. Customer accept list represents the list of projects (id/number) on customer side that can privately connect to the service attachment. It is an optional field which the customers can provide during the instance creation. By default, the customer project associated with the Apigee organization will be included to the list.
  /// [description] Optional. Description of the instance.
  /// [diskEncryptionKeyName] Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only. Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  /// [displayName] Optional. Display name for the instance.
  /// [ipRange] Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee instance. Providing CIDR ranges is optional. You can provide just /22 or /28 or both (or neither). Ranges you provide should be freely available as part of a larger named range you have allocated to the Service Networking peering. If this parameter is not provided, Apigee automatically requests an available /22 and /28 CIDR block from Service Networking. Use the /22 CIDR block for configuring your firewall needs to allow traffic from Apigee. Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`
  /// [location] Compute Engine location where the instance resides.
  /// [name] Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\d]$`.
  /// [organizationId] Required.
  /// [peeringCidrRange] Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.
  InstanceArgs({
    pulumi.Output<List<String>>? consumerAcceptList,
    pulumi.Output<String>? description,
    pulumi.Output<String>? diskEncryptionKeyName,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? ipRange,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organizationId,
    pulumi.Output<InstancePeeringCidrRange>? peeringCidrRange,
  }) :
      consumerAcceptList = pulumi.Input.asOptionalInput<List<String>>(consumerAcceptList),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskEncryptionKeyName = pulumi.Input.asOptionalInput<String>(diskEncryptionKeyName),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      ipRange = pulumi.Input.asOptionalInput<String>(ipRange),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      peeringCidrRange = pulumi.Input.asOptionalInput<InstancePeeringCidrRange>(peeringCidrRange);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerAcceptList': ?consumerAcceptList,
      'description': ?description,
      'diskEncryptionKeyName': ?diskEncryptionKeyName,
      'displayName': ?displayName,
      'ipRange': ?ipRange,
      'location': ?location,
      'name': ?name,
      'organizationId': organizationId,
      'peeringCidrRange': ?pulumi.Input.mapOptionalInputValue<InstancePeeringCidrRange, String>(peeringCidrRange, (value) => value.value),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      consumerAcceptList: map['consumerAcceptList'] == null ? null : pulumi.Output.create<List<String>>((map['consumerAcceptList'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskEncryptionKeyName: map['diskEncryptionKeyName'] == null ? null : pulumi.Output.create<String>(map['diskEncryptionKeyName'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      ipRange: map['ipRange'] == null ? null : pulumi.Output.create<String>(map['ipRange'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      peeringCidrRange: map['peeringCidrRange'] == null ? null : pulumi.Output.create<InstancePeeringCidrRange>(InstancePeeringCidrRange.fromValue(map['peeringCidrRange'] as String)),
    );
  }
}

