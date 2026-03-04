// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSourceFormat {
  /// Defines the specific type of format for the storage source.
  final pulumi.Input<String> type;

  /// Creates a new [PoolSourceFormat].
  /// [type] Defines the specific type of format for the storage source.
  PoolSourceFormat({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory PoolSourceFormat.fromMap(Map<String, dynamic> map) {
    return PoolSourceFormat(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
