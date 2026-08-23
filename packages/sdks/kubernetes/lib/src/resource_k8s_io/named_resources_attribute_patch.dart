// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_resources_int_slice_patch.dart';
import 'named_resources_string_slice_patch.dart';

/// NamedResourcesAttribute is a combination of an attribute name and its value.
class NamedResourcesAttributePatch {
  /// BoolValue is a true/false value.
  final pulumi.Input<bool>? bool_;
  /// IntValue is a 64-bit integer.
  final pulumi.Input<int>? int_;
  /// IntSliceValue is an array of 64-bit integers.
  final pulumi.Input<NamedResourcesIntSlicePatch>? intSlice;
  /// Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  final pulumi.Input<String>? name;
  /// QuantityValue is a quantity.
  final pulumi.Input<String>? quantity;
  /// StringValue is a string.
  final pulumi.Input<String>? string_;
  /// StringSliceValue is an array of strings.
  final pulumi.Input<NamedResourcesStringSlicePatch>? stringSlice;
  /// VersionValue is a semantic version according to semver.org spec 2.0.0.
  final pulumi.Input<String>? version;

  /// Creates a new [NamedResourcesAttributePatch].
  /// [bool_] BoolValue is a true/false value.
  /// [int_] IntValue is a 64-bit integer.
  /// [intSlice] IntSliceValue is an array of 64-bit integers.
  /// [name] Name is unique identifier among all resource instances managed by the driver on the node. It must be a DNS subdomain.
  /// [quantity] QuantityValue is a quantity.
  /// [string_] StringValue is a string.
  /// [stringSlice] StringSliceValue is an array of strings.
  /// [version] VersionValue is a semantic version according to semver.org spec 2.0.0.
  const NamedResourcesAttributePatch({
    this.bool_,
    this.int_,
    this.intSlice,
    this.name,
    this.quantity,
    this.string_,
    this.stringSlice,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?bool_,
      'int': ?int_,
      'intSlice': ?pulumi.Input.mapOptionalInputValue<NamedResourcesIntSlicePatch, Map<String, dynamic>>(intSlice, (value) => value.toMap()),
      'name': ?name,
      'quantity': ?quantity,
      'string': ?string_,
      'stringSlice': ?pulumi.Input.mapOptionalInputValue<NamedResourcesStringSlicePatch, Map<String, dynamic>>(stringSlice, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory NamedResourcesAttributePatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesAttributePatch(
      bool_: (() { final guardedValue = map['bool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      int_: (() { final guardedValue = map['int']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      intSlice: (() { final guardedValue = map['intSlice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamedResourcesIntSlicePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quantity: (() { final guardedValue = map['quantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      string_: (() { final guardedValue = map['string']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringSlice: (() { final guardedValue = map['stringSlice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamedResourcesStringSlicePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
