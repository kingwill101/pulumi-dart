// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecNetworksAdvanced {
  /// The network aliases of the container in the specific network.
  final pulumi.Input<List<String>>? aliases;
  /// An array of driver options for the network, e.g. `opts1=value`
  final pulumi.Input<List<String>>? driverOpts;
  /// The id of the docker network to use. Please use `docker_network.id`. Using the name attribute of the docker network will lead to constant replacements.
  final pulumi.Input<String>? id;
  /// Deprecated attribute. The name/id of the docker network. Conflicts with `id` attribute.
  final pulumi.Input<String>? name;

  /// Creates a new [ServiceTaskSpecNetworksAdvanced].
  /// [aliases] The network aliases of the container in the specific network.
  /// [driverOpts] An array of driver options for the network, e.g. `opts1=value`
  /// [id] The id of the docker network to use. Please use `docker_network.id`. Using the name attribute of the docker network will lead to constant replacements.
  /// [name] Deprecated attribute. The name/id of the docker network. Conflicts with `id` attribute.
  const ServiceTaskSpecNetworksAdvanced({
    this.aliases,
    this.driverOpts,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'driverOpts': ?driverOpts,
      'id': ?id,
      'name': ?name,
    };
  }

  factory ServiceTaskSpecNetworksAdvanced.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecNetworksAdvanced(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      driverOpts: (() { final guardedValue = map['driverOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
