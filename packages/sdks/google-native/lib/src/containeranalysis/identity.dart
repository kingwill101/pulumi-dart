// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The unique identifier of the update.
class Identity {
  /// The revision number of the update.
  final pulumi.Input<int>? revision;
  /// The revision independent identifier of the update.
  final pulumi.Input<String>? updateId;

  /// Creates a new [Identity].
  /// [revision] The revision number of the update.
  /// [updateId] The revision independent identifier of the update.
  const Identity({
    this.revision,
    this.updateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revision': ?revision,
      'updateId': ?updateId,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updateId: (() { final guardedValue = map['updateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

