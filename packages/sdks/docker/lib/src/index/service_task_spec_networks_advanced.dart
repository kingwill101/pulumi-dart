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
      aliases: map['aliases'] == null ? null : ((map['aliases'] as List).cast<String>()).input(),
      driverOpts: map['driverOpts'] == null ? null : ((map['driverOpts'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

