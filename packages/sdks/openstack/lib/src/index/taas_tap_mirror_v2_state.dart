// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'taas_tap_mirror_v2_directions.dart';

/// Input properties used for looking up and filtering TaasTapMirrorV2 resources.
class TaasTapMirrorV2State {
  /// The human-readable description for the Tap Mirror.
  /// Changing this updates the description of the existing Tap Mirror.
  final pulumi.Input<String>? description;
  /// A block declaring the directions to be mirrored and their
  /// identifiers. One block has to be declared with at least one direction. Changing
  /// this creates a new Tap Mirror.
  final pulumi.Input<TaasTapMirrorV2Directions>? directions;
  /// The type of the mirroring, can be `gre` or `erspanv1`.
  /// Changing this creates a new Tap Mirror.
  final pulumi.Input<String>? mirrorType;
  /// The name of the Tap Mirror. Changing this updates the name of
  /// the existing Tap Mirror.
  final pulumi.Input<String>? name;
  /// The Port ID of the Tap Mirror, this will be the source of
  /// the mirrored traffic, and this traffic will be tunneled into the GRE or ERSPAN
  /// v1 tunnel. The tunnel itself is not starting from this port. Changing this
  /// creates a new Tap Mirror.
  final pulumi.Input<String>? portId;
  /// Id of the OpenStack project.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an endpoint group. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// group.
  final pulumi.Input<String>? region;
  /// The remote IP of the Tap Mirror, this will be the remote
  /// end of the GRE or ERSPAN v1 tunnel. Changing this creates a new Tap Mirror.
  final pulumi.Input<String>? remoteIp;
  /// The owner of the Tap Mirror. Required if admin wants to
  /// create a Tap Mirror for another project. Changing this creates a new Tap Mirror.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [TaasTapMirrorV2State].
  /// [description] The human-readable description for the Tap Mirror.
  /// [directions] A block declaring the directions to be mirrored and their
  /// [mirrorType] The type of the mirroring, can be `gre` or `erspanv1`.
  /// [name] The name of the Tap Mirror. Changing this updates the name of
  /// [portId] The Port ID of the Tap Mirror, this will be the source of
  /// [projectId] Id of the OpenStack project.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [remoteIp] The remote IP of the Tap Mirror, this will be the remote
  /// [tenantId] The owner of the Tap Mirror. Required if admin wants to
  TaasTapMirrorV2State({
    pulumi.Output<String>? description,
    pulumi.Output<TaasTapMirrorV2Directions>? directions,
    pulumi.Output<String>? mirrorType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? portId,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? remoteIp,
    pulumi.Output<String>? tenantId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      directions = pulumi.Input.asOptionalInput<TaasTapMirrorV2Directions>(directions),
      mirrorType = pulumi.Input.asOptionalInput<String>(mirrorType),
      name = pulumi.Input.asOptionalInput<String>(name),
      portId = pulumi.Input.asOptionalInput<String>(portId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteIp = pulumi.Input.asOptionalInput<String>(remoteIp),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'directions': ?pulumi.Input.mapOptionalInputValue<TaasTapMirrorV2Directions, Map<String, dynamic>>(directions, (value) => value.toMap()),
      'mirrorType': ?mirrorType,
      'name': ?name,
      'portId': ?portId,
      'projectId': ?projectId,
      'region': ?region,
      'remoteIp': ?remoteIp,
      'tenantId': ?tenantId,
    };
  }

  factory TaasTapMirrorV2State.fromMap(Map<String, dynamic> map) {
    return TaasTapMirrorV2State(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      directions: map['directions'] == null ? null : pulumi.Output.create<TaasTapMirrorV2Directions>(TaasTapMirrorV2Directions.fromMap((map['directions'] as Map).cast<String, dynamic>())),
      mirrorType: map['mirrorType'] == null ? null : pulumi.Output.create<String>(map['mirrorType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portId: map['portId'] == null ? null : pulumi.Output.create<String>(map['portId'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      remoteIp: map['remoteIp'] == null ? null : pulumi.Output.create<String>(map['remoteIp'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

