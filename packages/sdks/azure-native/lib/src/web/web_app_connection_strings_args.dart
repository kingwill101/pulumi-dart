// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conn_string_value_type_pair.dart';

/// {@template pulumi_web_web_app_connection_strings_args_doc}
/// The set of arguments for WebAppConnectionStrings.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_connection_strings_args_doc}
class WebAppConnectionStringsArgs {
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Connection strings.
  final pulumi.Input<Map<String, ConnStringValueTypePair>>? properties;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppConnectionStringsArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [properties] Connection strings.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppConnectionStringsArgs({
    this.kind,
    required this.name,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<Map<String, ConnStringValueTypePair>, Map<String, Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeMapValues<ConnStringValueTypePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppConnectionStringsArgs.fromMap(Map<String, dynamic> map) {
    return WebAppConnectionStringsArgs(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (pulumi.Input.decodeMapValues<ConnStringValueTypePair>(map['properties']!, (value) => ConnStringValueTypePair.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

