// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupExposedPort {
  /// The port number the container will expose. Changing this forces a new resource to be created.
  final pulumi.Input<int?>? port;
  /// The network protocol associated with port. Possible values are `TCP` & `UDP`. Changing this forces a new resource to be created. Defaults to `TCP`.
  ///
  /// &gt; **Note:** Removing all `exposedPort` blocks requires setting `exposedPort = []`.
  final pulumi.Input<String?>? protocol;

  /// Creates a new [GroupExposedPort].
  /// [port] The port number the container will expose. Changing this forces a new resource to be created.
  /// [protocol] The network protocol associated with port. Possible values are `TCP` & `UDP`. Changing this forces a new resource to be created. Defaults to `TCP`.
  const GroupExposedPort({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory GroupExposedPort.fromMap(Map<String, dynamic> map) {
    return GroupExposedPort(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
