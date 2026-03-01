// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Profile resources.
class ProfileState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the CDN Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the CDN Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The pricing related information of current CDN profile. Accepted values are `Standard_Akamai`, `Standard_ChinaCdn`, `Standard_Microsoft`, `Standard_Verizon` or `Premium_Verizon`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProfileState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the CDN Profile. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the CDN Profile. Changing this forces a new resource to be created.
  /// [sku] The pricing related information of current CDN profile. Accepted values are `Standard_Akamai`, `Standard_ChinaCdn`, `Standard_Microsoft`, `Standard_Verizon` or `Premium_Verizon`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  ProfileState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory ProfileState.fromMap(Map<String, dynamic> map) {
    return ProfileState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

