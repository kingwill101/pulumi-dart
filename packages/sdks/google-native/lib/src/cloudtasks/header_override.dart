// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header.dart';

/// Wraps the Header object.
class HeaderOverride {
  /// header embodying a key and a value.
  final pulumi.Input<Header>? header;

  /// Creates a new [HeaderOverride].
  /// [header] header embodying a key and a value.
  HeaderOverride({
    this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?pulumi.Input.mapOptionalInputValue<Header, Map<String, dynamic>>(header, (value) => value.toMap()),
    };
  }

  factory HeaderOverride.fromMap(Map<String, dynamic> map) {
    return HeaderOverride(
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Header.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

