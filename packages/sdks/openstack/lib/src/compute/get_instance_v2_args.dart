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
    required this.id,
    this.networks,
    this.region,
    this.userData,
  });

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
      id: pulumi.Input.fromValue(map['id'] as String),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceV2Network>(guardedValue, (value) => GetInstanceV2Network.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

