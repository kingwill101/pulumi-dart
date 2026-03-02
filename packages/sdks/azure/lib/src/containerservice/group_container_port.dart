// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupContainerPort {
  /// The port number the container will expose. Changing this forces a new resource to be created.
  final pulumi.Input<int>? port;
  /// The network protocol associated with port. Possible values are `TCP` & `UDP`. Changing this forces a new resource to be created. Defaults to `TCP`.
  ///
  /// > **Note:** Omitting these blocks will default the exposed ports on the group to all ports on all containers defined in the `container` blocks of this group.
  final pulumi.Input<String>? protocol;

  /// Creates a new [GroupContainerPort].
  /// [port] The port number the container will expose. Changing this forces a new resource to be created.
  /// [protocol] The network protocol associated with port. Possible values are `TCP` & `UDP`. Changing this forces a new resource to be created. Defaults to `TCP`.
  GroupContainerPort({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory GroupContainerPort.fromMap(Map<String, dynamic> map) {
    return GroupContainerPort(
      port: map['port'] == null ? null : (map['port'] as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
    );
  }
}

