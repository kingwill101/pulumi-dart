// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_data_connect_service_data_connect_service_args_doc}
/// The set of arguments for DataConnectService.
/// {@endtemplate}
/// {@macro pulumi_firebase_data_connect_service_data_connect_service_args_doc}
class DataConnectServiceArgs {
  /// Optional. Stores small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The deletion policy for the database. Setting the field to FORCE allows the
  /// Service to be deleted even if a Schema or Connector is present. By default,
  /// the Service deletion will only succeed when no Schema or Connectors are
  /// present.
  /// Possible values: DEFAULT, FORCE
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Mutable human-readable name. 63 character limit.
  final pulumi.Input<String>? displayName;
  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The region in which the service resides, e.g. "us-central1" or "asia-east1".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. The ID to use for the service, which will become the final component of the
  /// service's resource name.
  final pulumi.Input<String> serviceId;

  /// Creates a new [DataConnectServiceArgs].
  /// [annotations] Optional. Stores small amounts of arbitrary data.
  /// [deletionPolicy] The deletion policy for the database. Setting the field to FORCE allows the
  /// [displayName] Optional. Mutable human-readable name. 63 character limit.
  /// [labels] Optional. Labels as key value pairs.
  /// [location] The region in which the service resides, e.g. "us-central1" or "asia-east1".
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] Required. The ID to use for the service, which will become the final component of the
  const DataConnectServiceArgs({
    this.annotations,
    this.deletionPolicy,
    this.displayName,
    this.labels,
    required this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory DataConnectServiceArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectServiceArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}

