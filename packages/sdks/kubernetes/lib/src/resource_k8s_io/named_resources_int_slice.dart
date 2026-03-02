// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedResourcesIntSlice contains a slice of 64-bit integers.
class NamedResourcesIntSlice {
  /// Ints is the slice of 64-bit integers.
  final pulumi.Input<List<int>> ints;

  /// Creates a new [NamedResourcesIntSlice].
  /// [ints] Ints is the slice of 64-bit integers.
  NamedResourcesIntSlice({
    required this.ints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ints': ints,
    };
  }

  factory NamedResourcesIntSlice.fromMap(Map<String, dynamic> map) {
    return NamedResourcesIntSlice(
      ints: ((map['ints'] as List).cast<int>()).input(),
    );
  }
}

