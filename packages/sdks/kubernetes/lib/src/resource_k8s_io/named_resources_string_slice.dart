// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedResourcesStringSlice contains a slice of strings.
class NamedResourcesStringSlice {
  /// Strings is the slice of strings.
  final pulumi.Input<List<String>> strings;

  /// Creates a new [NamedResourcesStringSlice].
  /// [strings] Strings is the slice of strings.
  const NamedResourcesStringSlice({
    required this.strings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'strings': strings,
    };
  }

  factory NamedResourcesStringSlice.fromMap(Map<String, dynamic> map) {
    return NamedResourcesStringSlice(
      strings: pulumi.Input.fromValue((map['strings'] as List).cast<String>()),
    );
  }
}

