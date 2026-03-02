// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_int_slice.dart';
import 'named_resources_string_slice.dart';

/// NamedResourcesAttribute is a combination of an attribute name and its value.
class NamedResourcesAttribute {
  /// BoolValue is a true/false value.
  final pulumi.Input<bool>? bool;
  /// IntValue is a 64-bit integer.
  final pulumi.Input<int>? int;
  /// IntSliceValue is an array of 64-bit integers.
  final pulumi.Input<NamedResourcesIntSlice>? intSlice;
  /// Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  final pulumi.Input<String> name;
  /// QuantityValue is a quantity.
  final pulumi.Input<String>? quantity;
  /// StringValue is a string.
  final pulumi.Input<String>? string;
  /// StringSliceValue is an array of strings.
  final pulumi.Input<NamedResourcesStringSlice>? stringSlice;
  /// VersionValue is a semantic version according to semver.org spec 2.0.0.
  final pulumi.Input<String>? version;

  /// Creates a new [NamedResourcesAttribute].
  /// [bool] BoolValue is a true/false value.
  /// [int] IntValue is a 64-bit integer.
  /// [intSlice] IntSliceValue is an array of 64-bit integers.
  /// [name] Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  /// [quantity] QuantityValue is a quantity.
  /// [string] StringValue is a string.
  /// [stringSlice] StringSliceValue is an array of strings.
  /// [version] VersionValue is a semantic version according to semver.org spec 2.0.0.
  NamedResourcesAttribute({
    this.bool,
    this.int,
    this.intSlice,
    required this.name,
    this.quantity,
    this.string,
    this.stringSlice,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?bool,
      'int': ?int,
      'intSlice': ?pulumi.Input.mapOptionalInputValue<NamedResourcesIntSlice, Map<String, dynamic>>(intSlice, (value) => value.toMap()),
      'name': name,
      'quantity': ?quantity,
      'string': ?string,
      'stringSlice': ?pulumi.Input.mapOptionalInputValue<NamedResourcesStringSlice, Map<String, dynamic>>(stringSlice, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory NamedResourcesAttribute.fromMap(Map<String, dynamic> map) {
    return NamedResourcesAttribute(
      bool: map['bool'] == null ? null : (map['bool'] as bool).input(),
      int: map['int'] == null ? null : (map['int'] as int).input(),
      intSlice: map['intSlice'] == null ? null : (NamedResourcesIntSlice.fromMap((map['intSlice'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      quantity: map['quantity'] == null ? null : (map['quantity'] as String).input(),
      string: map['string'] == null ? null : (map['string'] as String).input(),
      stringSlice: map['stringSlice'] == null ? null : (NamedResourcesStringSlice.fromMap((map['stringSlice'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

