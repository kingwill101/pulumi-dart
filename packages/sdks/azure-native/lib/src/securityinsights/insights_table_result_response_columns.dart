// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsTableResultResponseColumns {
  /// the name of the column
  final pulumi.Input<String?>? name;
  /// the type of the column
  final pulumi.Input<String?>? type;

  /// Creates a new [InsightsTableResultResponseColumns].
  /// [name] the name of the column
  /// [type] the type of the column
  const InsightsTableResultResponseColumns({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory InsightsTableResultResponseColumns.fromMap(Map<String, dynamic> map) {
    return InsightsTableResultResponseColumns(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
