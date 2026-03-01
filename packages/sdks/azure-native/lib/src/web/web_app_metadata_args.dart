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
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    pulumi.Output<Map<String, String>>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      properties = pulumi.Input.asOptionalInput<Map<String, String>>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['properties'] as Map).cast<String, String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

