// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSourceInitiatorIqn {
  /// Sets the name attribute of the iSCSI IQN for identification.
  final pulumi.Input<String>? name;

  /// Creates a new [PoolSourceInitiatorIqn].
  /// [name] Sets the name attribute of the iSCSI IQN for identification.
  PoolSourceInitiatorIqn({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PoolSourceInitiatorIqn.fromMap(Map<String, dynamic> map) {
    return PoolSourceInitiatorIqn(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

