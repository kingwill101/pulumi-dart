// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecNetworksAdvanced {
  /// The network aliases of the container in the specific network.
  final pulumi.Input<List<String>>? aliases;
  /// An array of driver options for the network, e.g. `opts1=value`
  final pulumi.Input<List<String>>? driverOpts;
  /// The name/id of the network.
  final pulumi.Input<String> name;

  /// Creates a new [ServiceTaskSpecNetworksAdvanced].
  /// [aliases] The network aliases of the container in the specific network.
  /// [driverOpts] An array of driver options for the network, e.g. `opts1=value`
  /// [name] The name/id of the network.
  ServiceTaskSpecNetworksAdvanced({
    this.aliases,
    this.driverOpts,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'driverOpts': ?driverOpts,
      'name': name,
    };
  }

  factory ServiceTaskSpecNetworksAdvanced.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecNetworksAdvanced(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      driverOpts: (() { final guardedValue = map['driverOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

