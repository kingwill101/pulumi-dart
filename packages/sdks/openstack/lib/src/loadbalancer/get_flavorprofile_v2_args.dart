// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_get_flavorprofile_v2_get_flavorprofile_v2_args_doc}
/// Arguments for getFlavorprofileV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_get_flavorprofile_v2_get_flavorprofile_v2_args_doc}
class GetFlavorprofileV2Args {
  /// The ID of the flavorprofile. Conflicts with `name` and
  /// `provider_name`.
  final pulumi.Input<String>? flavorprofileId;
  /// The name of the flavorprofile. Conflicts with `flavorprofile_id`.
  final pulumi.Input<String>? name;
  /// The name of the provider that the flavorprofile uses. Conflicts
  /// with `flavorprofile_id`.
  final pulumi.Input<String>? providerName;
  /// The region in which to obtain the V2 Load Balancer client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFlavorprofileV2Args].
  /// [flavorprofileId] The ID of the flavorprofile. Conflicts with `name` and
  /// [name] The name of the flavorprofile. Conflicts with `flavorprofile_id`.
  /// [providerName] The name of the provider that the flavorprofile uses. Conflicts
  /// [region] The region in which to obtain the V2 Load Balancer client.
  const GetFlavorprofileV2Args({
    this.flavorprofileId,
    this.name,
    this.providerName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flavorprofileId': ?flavorprofileId,
      'name': ?name,
      'providerName': ?providerName,
      'region': ?region,
    };
  }

  factory GetFlavorprofileV2Args.fromMap(Map<String, dynamic> map) {
    return GetFlavorprofileV2Args(
      flavorprofileId: (() { final guardedValue = map['flavorprofileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

