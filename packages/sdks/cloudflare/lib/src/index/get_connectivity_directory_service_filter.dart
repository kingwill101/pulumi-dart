// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityDirectoryServiceFilter {
  /// Available values: "tcp", "http".
  final pulumi.Input<String?>? type;

  /// Creates a new [GetConnectivityDirectoryServiceFilter].
  /// [type] Available values: "tcp", "http".
  const GetConnectivityDirectoryServiceFilter({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory GetConnectivityDirectoryServiceFilter.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServiceFilter(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
