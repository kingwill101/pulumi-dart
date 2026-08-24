// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'int_enum.dart';
import 'string_enum.dart';

class Holder {
  final pulumi.Input<StringEnum?>? color;
  final pulumi.Input<IntEnum?>? size;

  /// Creates a new [Holder].
  /// [color] Optional.
  /// [size] Optional.
  const Holder({
    this.color,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?pulumi.Input.mapOptionalInputValue<StringEnum, String>(color, (value) => value.wireValue),
      'size': ?pulumi.Input.mapOptionalInputValue<IntEnum, int>(size, (value) => value.wireValue),
    };
  }

  factory Holder.fromMap(Map<String, dynamic> map) {
    return Holder(
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StringEnum.fromValue(guardedValue as String)); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntEnum.fromValue(guardedValue as int)); })(),
    );
  }
}
