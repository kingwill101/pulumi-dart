// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetD1DatabaseFilter {
  /// a database name to search for.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetD1DatabaseFilter].
  /// [name] a database name to search for.
  const GetD1DatabaseFilter({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory GetD1DatabaseFilter.fromMap(Map<String, dynamic> map) {
    return GetD1DatabaseFilter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
