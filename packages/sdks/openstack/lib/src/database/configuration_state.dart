// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_configuration.dart';
import 'configuration_datastore.dart';

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// An array of configuration parameter name and value. Can be specified multiple times. The configuration object structure is documented below.
  final pulumi.Input<List<ConfigurationConfiguration>>? configurations;
  /// An array of database engine type and version. The datastore
  /// object structure is documented below. Changing this creates resource.
  final pulumi.Input<ConfigurationDatastore>? datastore;
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// A unique name for the resource.
  final pulumi.Input<String>? name;
  /// The region in which to create the db instance. Changing this
  /// creates a new instance.
  final pulumi.Input<String>? region;

  /// Creates a new [ConfigurationState].
  /// [configurations] An array of configuration parameter name and value. Can be specified multiple times. The configuration object structure is documented below.
  /// [datastore] An array of database engine type and version. The datastore
  /// [description] Description of the resource.
  /// [name] A unique name for the resource.
  /// [region] The region in which to create the db instance. Changing this
  const ConfigurationState({
    this.configurations,
    this.datastore,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<ConfigurationConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datastore': ?pulumi.Input.mapOptionalInputValue<ConfigurationDatastore, Map<String, dynamic>>(datastore, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ConfigurationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationState(
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationConfiguration>(guardedValue, (value) => ConfigurationConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      datastore: (() { final guardedValue = map['datastore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationDatastore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

