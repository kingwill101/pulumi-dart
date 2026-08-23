// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vision_v1_product_set_args_doc}
/// The set of arguments for ProductSet.
/// {@endtemplate}
/// {@macro pulumi_vision_v1_product_set_args_doc}
class ProductSetArgs {
  /// The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.
  final pulumi.Input<String>? name;
  /// A user-supplied resource id for this ProductSet. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  final pulumi.Input<String>? productSetId;
  final pulumi.Input<String>? project;

  /// Creates a new [ProductSetArgs].
  /// [displayName] The user-provided name for this ProductSet. Must not be empty. Must be at most 4096 characters long.
  /// [location] Optional.
  /// [name] The resource name of the ProductSet. Format is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This field is ignored when creating a ProductSet.
  /// [productSetId] A user-supplied resource id for this ProductSet. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  /// [project] Optional.
  const ProductSetArgs({
    this.displayName,
    this.location,
    this.name,
    this.productSetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'productSetId': ?productSetId,
      'project': ?project,
    };
  }

  factory ProductSetArgs.fromMap(Map<String, dynamic> map) {
    return ProductSetArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productSetId: (() { final guardedValue = map['productSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
