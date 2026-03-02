// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_metadata_args_doc}
/// The set of arguments for WebAppMetadata.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_metadata_args_doc}
class WebAppMetadataArgs {
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Settings.
  final pulumi.Input<Map<String, String>>? properties;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppMetadataArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [properties] Settings.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppMetadataArgs({
    this.kind,
    required this.name,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': name,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppMetadataArgs.fromMap(Map<String, dynamic> map) {
    return WebAppMetadataArgs(
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

