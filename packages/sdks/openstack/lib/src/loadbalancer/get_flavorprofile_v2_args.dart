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
  GetFlavorprofileV2Args({
    pulumi.Output<String>? flavorprofileId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? providerName,
    pulumi.Output<String>? region,
  }) :
      flavorprofileId = pulumi.Input.asOptionalInput<String>(flavorprofileId),
      name = pulumi.Input.asOptionalInput<String>(name),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      flavorprofileId: map['flavorprofileId'] == null ? null : pulumi.Output.create<String>(map['flavorprofileId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

