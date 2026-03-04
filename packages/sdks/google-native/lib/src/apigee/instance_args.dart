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
    this.consumerAcceptList,
    this.description,
    this.diskEncryptionKeyName,
    this.displayName,
    this.ipRange,
    this.location,
    this.name,
    required this.organizationId,
    this.peeringCidrRange,
  });

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
      'peeringCidrRange':
          ?pulumi.Input.mapOptionalInputValue<InstancePeeringCidrRange, String>(
            peeringCidrRange,
            (value) => value.wireValue,
          ),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      consumerAcceptList: (() {
        final guardedValue = map['consumerAcceptList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskEncryptionKeyName: (() {
        final guardedValue = map['diskEncryptionKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipRange: (() {
        final guardedValue = map['ipRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      peeringCidrRange: (() {
        final guardedValue = map['peeringCidrRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstancePeeringCidrRange.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
