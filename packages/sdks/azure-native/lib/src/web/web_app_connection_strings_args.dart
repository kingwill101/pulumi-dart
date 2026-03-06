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
  const WebAppConnectionStringsArgs({
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
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ConnStringValueTypePair>(guardedValue, (value) => ConnStringValueTypePair.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

