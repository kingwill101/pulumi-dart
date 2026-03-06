// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntryEntrySourceAncestor {
  /// The name of the ancestor resource.
  final pulumi.Input<String>? name;
  /// The type of the ancestor resource.
  final pulumi.Input<String>? type;

  /// Creates a new [EntryEntrySourceAncestor].
  /// [name] The name of the ancestor resource.
  /// [type] The type of the ancestor resource.
  const EntryEntrySourceAncestor({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory EntryEntrySourceAncestor.fromMap(Map<String, dynamic> map) {
    return EntryEntrySourceAncestor(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

