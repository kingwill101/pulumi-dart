// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WasmPluginUsedBy {
  /// Identifier. Name of the WasmPlugin resource.
  final pulumi.Input<String>? name;

  /// Creates a new [WasmPluginUsedBy].
  /// [name] Identifier. Name of the WasmPlugin resource.
  WasmPluginUsedBy({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory WasmPluginUsedBy.fromMap(Map<String, dynamic> map) {
    return WasmPluginUsedBy(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

