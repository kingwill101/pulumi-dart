// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_int_slice_patch.dart';
import 'named_resources_string_slice_patch.dart';

/// NamedResourcesAttribute is a combination of an attribute name and its value.
class NamedResourcesAttributePatch {
  /// BoolValue is a true/false value.
  final pulumi.Input<bool>? bool;
  /// IntValue is a 64-bit integer.
  final pulumi.Input<int>? int;
  /// IntSliceValue is an array of 64-bit integers.
  final pulumi.Input<NamedResourcesIntSlicePatch>? intSlice;
  /// Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  final pulumi.Input<String>? name;
  /// QuantityValue is a quantity.
  final pulumi.Input<String>? quantity;
  /// StringValue is a string.
  final pulumi.Input<String>? string;
  /// StringSliceValue is an array of strings.
  final pulumi.Input<NamedResourcesStringSlicePatch>? stringSlice;
  /// VersionValue is a semantic version according to semver.org spec 2.0.0.
  final pulumi.Input<String>? version;

  /// Creates a new [NamedResourcesAttributePatch].
  /// [bool] BoolValue is a true/false value.
  /// [int] IntValue is a 64-bit integer.
  /// [intSlice] IntSliceValue is an array of 64-bit integers.
  /// [name] Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  /// [quantity] QuantityValue is a quantity.
  /// [string] StringValue is a string.
  /// [stringSlice] StringSliceValue is an array of strings.
  /// [version] VersionValue is a semantic version according to semver.org spec 2.0.0.
  NamedResourcesAttributePatch({
    this.bool,
    this.int,
    this.intSlice,
    this.name,
    this.quantity,
    this.string,
    this.stringSlice,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?bool,
      'int': ?int,
      'intSlice': ?pulumi.Input.mapOptionalInputValue<NamedResourcesIntSlicePatch, Map<String, dynamic>>(intSlice, (value) => value.toMap()),
      'name': ?name,
      'quantity': ?quantity,
      'string': ?string,
      'stringSlice': ?pulumi.Input.mapOptionalInputValue<NamedResourcesStringSlicePatch, Map<String, dynamic>>(stringSlice, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory NamedResourcesAttributePatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesAttributePatch(
      bool: map['bool'] == null ? null : (map['bool'] as bool).input(),
      int: map['int'] == null ? null : (map['int'] as int).input(),
      intSlice: map['intSlice'] == null ? null : (NamedResourcesIntSlicePatch.fromMap((map['intSlice'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      quantity: map['quantity'] == null ? null : (map['quantity'] as String).input(),
      string: map['string'] == null ? null : (map['string'] as String).input(),
      stringSlice: map['stringSlice'] == null ? null : (NamedResourcesStringSlicePatch.fromMap((map['stringSlice'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

