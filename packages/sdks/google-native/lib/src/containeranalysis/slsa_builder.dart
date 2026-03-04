// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlsaBuilder {
  final pulumi.Input<String>? id;

  /// Creates a new [SlsaBuilder].
  /// [id] Optional.
  SlsaBuilder({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory SlsaBuilder.fromMap(Map<String, dynamic> map) {
    return SlsaBuilder(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
