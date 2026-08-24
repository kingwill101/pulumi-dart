// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RateLimitMatchHeader {
  /// The name of the response header to match.
  final pulumi.Input<String?>? name;
  /// The operator used when matching: `eq` means "equal" and `ne` means "not equal".
  /// Available values: "eq", "ne".
  final pulumi.Input<String?>? op;
  /// The value of the response header, which must match exactly.
  final pulumi.Input<String?>? value;

  /// Creates a new [RateLimitMatchHeader].
  /// [name] The name of the response header to match.
  /// [op] The operator used when matching: `eq` means "equal" and `ne` means "not equal".
  /// [value] The value of the response header, which must match exactly.
  const RateLimitMatchHeader({
    this.name,
    this.op,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'op': ?op,
      'value': ?value,
    };
  }

  factory RateLimitMatchHeader.fromMap(Map<String, dynamic> map) {
    return RateLimitMatchHeader(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      op: (() { final guardedValue = map['op']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
