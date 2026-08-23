// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_get_data_stores_get_data_stores_args_doc}
/// Arguments for getDataStores.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_get_data_stores_get_data_stores_args_doc}
class GetDataStoresArgs {
  /// The geographic location where the data stores reside. The value can only be one of "global", "us" and "eu". Defaults to `global`.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataStoresArgs].
  /// [location] The geographic location where the data stores reside. The value can only be one of "global", "us" and "eu". Defaults to `global`.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  const GetDataStoresArgs({
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDataStoresArgs.fromMap(Map<String, dynamic> map) {
    return GetDataStoresArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
