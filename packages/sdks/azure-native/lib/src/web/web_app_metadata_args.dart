// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_metadata_args_doc}
/// The set of arguments for WebAppMetadata.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_metadata_args_doc}
class WebAppMetadataArgs {
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Settings.
  final pulumi.Input<Map<String, String>?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppMetadataArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [properties] Settings.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const WebAppMetadataArgs({
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
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
