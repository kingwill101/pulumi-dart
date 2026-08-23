// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_profile_profile_args_doc}
/// The set of arguments for Profile.
/// {@endtemplate}
/// {@macro pulumi_cdn_profile_profile_args_doc}
class ProfileArgs {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the CDN Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the CDN Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The pricing related information of current CDN profile. Accepted values are `Standard_Akamai`, `Standard_ChinaCdn`, `Standard_Microsoft`, `Standard_Verizon` or `Premium_Verizon`. Changing this forces a new resource to be created.
  final pulumi.Input<String> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProfileArgs].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the CDN Profile. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the CDN Profile. Changing this forces a new resource to be created.
  /// [sku] The pricing related information of current CDN profile. Accepted values are `Standard_Akamai`, `Standard_ChinaCdn`, `Standard_Microsoft`, `Standard_Verizon` or `Premium_Verizon`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const ProfileArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': ?tags,
    };
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
