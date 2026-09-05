// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedResourcesStringSlice contains a slice of strings.
class NamedResourcesStringSlicePatch {
  /// Strings is the slice of strings.
  final pulumi.Input<List<String>?>? strings;

  /// Creates a new [NamedResourcesStringSlicePatch].
  /// [strings] Strings is the slice of strings.
  const NamedResourcesStringSlicePatch({
    this.strings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'strings': ?strings,
    };
  }

  factory NamedResourcesStringSlicePatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesStringSlicePatch(
      strings: (() { final guardedValue = map['strings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
