// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dump flag definition.
class DumpFlagResponse {
  /// The name of the flag
  final pulumi.Input<String> name;
  /// The value of the flag.
  final pulumi.Input<String> value;

  /// Creates a new [DumpFlagResponse].
  /// [name] The name of the flag
  /// [value] The value of the flag.
  DumpFlagResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DumpFlagResponse.fromMap(Map<String, dynamic> map) {
    return DumpFlagResponse(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

