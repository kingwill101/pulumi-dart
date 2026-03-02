// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'curation_endpoint.dart';

/// {@template pulumi_apihub_curation_curation_args_doc}
/// The set of arguments for Curation.
/// {@endtemplate}
/// {@macro pulumi_apihub_curation_curation_args_doc}
class CurationArgs {
  /// The ID to use for the curation resource, which will become the final
  /// component of the curations's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified ID is already used by another curation resource in the API
  /// hub.
  /// * If not provided, a system generated ID will be used.
  /// This value should be 4-500 characters, and valid characters
  /// are /a-z[0-9]-_/.
  final pulumi.Input<String> curationId;
  /// The description of the curation.
  final pulumi.Input<String>? description;
  /// The display name of the curation.
  final pulumi.Input<String> displayName;
  /// The endpoint to be triggered for curation.
  /// The endpoint will be invoked with a request payload containing
  /// ApiMetadata.
  /// Response should contain curated data in the form of
  /// ApiMetadata.
  /// Structure is documented below.
  final pulumi.Input<CurationEndpoint> endpoint;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CurationArgs].
  /// [curationId] The ID to use for the curation resource, which will become the final
  /// [description] The description of the curation.
  /// [displayName] The display name of the curation.
  /// [endpoint] The endpoint to be triggered for curation.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  CurationArgs({
    required this.curationId,
    this.description,
    required this.displayName,
    required this.endpoint,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curationId': curationId,
      'description': ?description,
      'displayName': displayName,
      'endpoint': pulumi.Input.mapInputValue<CurationEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'location': location,
      'project': ?project,
    };
  }

  factory CurationArgs.fromMap(Map<String, dynamic> map) {
    return CurationArgs(
      curationId: (map['curationId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      endpoint: (CurationEndpoint.fromMap((map['endpoint'] as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

