// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conn_string_value_type_pair.dart';

/// {@template pulumi_web_web_app_connection_strings_slot_args_doc}
/// The set of arguments for WebAppConnectionStringsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_connection_strings_slot_args_doc}
class WebAppConnectionStringsSlotArgs {
  /// Kind of resource.
  final pulumi.Input<String>? kind;

  /// Name of the app.
  final pulumi.Input<String> name;

  /// Connection strings.
  final pulumi.Input<Map<String, ConnStringValueTypePair>>? properties;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the deployment slot. If a slot is not specified, the API will update the connection settings for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppConnectionStringsSlotArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [properties] Connection strings.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will update the connection settings for the production slot.
  WebAppConnectionStringsSlotArgs({
    this.kind,
    required this.name,
    this.properties,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': name,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ConnStringValueTypePair>,
            Map<String, Map<String, dynamic>>
          >(
            properties,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ConnStringValueTypePair,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory WebAppConnectionStringsSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppConnectionStringsSlotArgs(
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ConnStringValueTypePair>(
            guardedValue,
            (value) => ConnStringValueTypePair.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
