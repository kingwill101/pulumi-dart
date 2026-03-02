// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_lineage_v1_origin.dart';

/// {@template pulumi_datalineage_v1_process_args_doc}
/// The set of arguments for Process.
/// {@endtemplate}
/// {@macro pulumi_datalineage_v1_process_args_doc}
class ProcessArgs {
  /// Optional. The attributes of the process. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the process). Up to 100 attributes are allowed.
  final pulumi.Input<Map<String, String>>? attributes;
  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 200 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// Immutable. The resource name of the lineage process. Format: `projects/{project}/locations/{location}/processes/{process}`. Can be specified or auto-assigned. {process} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final pulumi.Input<String>? name;
  /// Optional. The origin of this process and its runs and lineage events.
  final pulumi.Input<GoogleCloudDatacatalogLineageV1Origin>? origin;
  final pulumi.Input<String>? project;
  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  final pulumi.Input<String>? requestId;

  /// Creates a new [ProcessArgs].
  /// [attributes] Optional. The attributes of the process. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the process). Up to 100 attributes are allowed.
  /// [displayName] Optional. A human-readable name you can set to display in a user interface. Must be not longer than 200 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  /// [location] Optional.
  /// [name] Immutable. The resource name of the lineage process. Format: `projects/{project}/locations/{location}/processes/{process}`. Can be specified or auto-assigned. {process} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// [origin] Optional. The origin of this process and its runs and lineage events.
  /// [project] Optional.
  /// [requestId] A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  ProcessArgs({
    this.attributes,
    this.displayName,
    this.location,
    this.name,
    this.origin,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'origin': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogLineageV1Origin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory ProcessArgs.fromMap(Map<String, dynamic> map) {
    return ProcessArgs(
      attributes: map['attributes'] == null ? null : ((map['attributes']! as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      origin: map['origin'] == null ? null : (GoogleCloudDatacatalogLineageV1Origin.fromMap((map['origin']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
    );
  }
}

