// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRateLimitsResultMatchHeader {
  /// The name of the response header to match.
  final pulumi.Input<String> name;
  /// The operator used when matching: `eq` means "equal" and `ne` means "not equal".
  /// Available values: "eq", "ne".
  final pulumi.Input<String> op;
  /// The value of the response header, which must match exactly.
  final pulumi.Input<String> value;

  /// Creates a new [GetRateLimitsResultMatchHeader].
  /// [name] The name of the response header to match.
  /// [op] The operator used when matching: `eq` means "equal" and `ne` means "not equal".
  /// [value] The value of the response header, which must match exactly.
  const GetRateLimitsResultMatchHeader({
    required this.name,
    required this.op,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'op': op,
      'value': value,
    };
  }

  factory GetRateLimitsResultMatchHeader.fromMap(Map<String, dynamic> map) {
    return GetRateLimitsResultMatchHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      op: pulumi.Input.fromValue(map['op'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
