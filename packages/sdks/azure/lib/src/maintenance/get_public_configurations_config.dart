// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPublicConfigurationsConfig {
  /// A description of the Public Maintenance Configuration.
  final pulumi.Input<String> description;
  /// The duration of the Public Maintenance Configuration window.
  final pulumi.Input<String> duration;
  /// The id of the Public Maintenance Configuration.
  final pulumi.Input<String> id;
  /// The Azure location to filter the list of Public Maintenance Configurations against.
  final pulumi.Input<String> location;
  /// The scope of the Public Maintenance Configuration.
  final pulumi.Input<String> maintenanceScope;
  /// The name of the Public Maintenance Configuration.
  final pulumi.Input<String> name;
  /// The recurring window to filter the list of Public Maintenance Configurations against. Possible values are `Monday-Thursday` and `Friday-Sunday`
  final pulumi.Input<String> recurEvery;
  /// The time zone for the maintenance window.
  final pulumi.Input<String> timeZone;

  /// Creates a new [GetPublicConfigurationsConfig].
  /// [description] A description of the Public Maintenance Configuration.
  /// [duration] The duration of the Public Maintenance Configuration window.
  /// [id] The id of the Public Maintenance Configuration.
  /// [location] The Azure location to filter the list of Public Maintenance Configurations against.
  /// [maintenanceScope] The scope of the Public Maintenance Configuration.
  /// [name] The name of the Public Maintenance Configuration.
  /// [recurEvery] The recurring window to filter the list of Public Maintenance Configurations against. Possible values are `Monday-Thursday` and `Friday-Sunday`
  /// [timeZone] The time zone for the maintenance window.
  const GetPublicConfigurationsConfig({
    required this.description,
    required this.duration,
    required this.id,
    required this.location,
    required this.maintenanceScope,
    required this.name,
    required this.recurEvery,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'duration': duration,
      'id': id,
      'location': location,
      'maintenanceScope': maintenanceScope,
      'name': name,
      'recurEvery': recurEvery,
      'timeZone': timeZone,
    };
  }

  factory GetPublicConfigurationsConfig.fromMap(Map<String, dynamic> map) {
    return GetPublicConfigurationsConfig(
      description: pulumi.Input.fromValue(map['description'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      maintenanceScope: pulumi.Input.fromValue(map['maintenanceScope'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      recurEvery: pulumi.Input.fromValue(map['recurEvery'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}
