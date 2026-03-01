// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_v2_network.dart';

/// {@template pulumi_compute_get_instance_v2_get_instance_v2_args_doc}
/// Arguments for getInstanceV2.
/// {@endtemplate}
/// {@macro pulumi_compute_get_instance_v2_get_instance_v2_args_doc}
class GetInstanceV2Args {
  /// The UUID of the instance
  final pulumi.Input<String> id;
  /// An array of maps, detailed below.
  final pulumi.Input<List<GetInstanceV2Network>>? networks;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The user data added when the server was created.
  final pulumi.Input<String>? userData;

  /// Creates a new [GetInstanceV2Args].
  /// [id] The UUID of the instance
  /// [networks] An array of maps, detailed below.
  /// [region] The region in which to obtain the V2 Compute client.
  /// [userData] The user data added when the server was created.
  GetInstanceV2Args({
    required pulumi.Output<String> id,
    pulumi.Output<List<GetInstanceV2Network>>? networks,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userData,
  }) :
      id = pulumi.Input.asInput<String>(id),
      networks = pulumi.Input.asOptionalInput<List<GetInstanceV2Network>>(networks),
      region = pulumi.Input.asOptionalInput<String>(region),
      userData = pulumi.Input.asOptionalInput<String>(userData);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<GetInstanceV2Network>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetInstanceV2Network, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'userData': ?userData,
    };
  }

  factory GetInstanceV2Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceV2Args(
      id: pulumi.Output.create<String>(map['id'] as String),
      networks: map['networks'] == null ? null : pulumi.Output.create<List<GetInstanceV2Network>>(pulumi.Input.decodeList<GetInstanceV2Network>(map['networks'], (value) => GetInstanceV2Network.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
    );
  }
}

