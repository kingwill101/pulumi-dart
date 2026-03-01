// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_storage_setting_properties.dart';

/// {@template pulumi_security_defender_for_storage_args_doc}
/// The set of arguments for DefenderForStorage.
/// {@endtemplate}
/// {@macro pulumi_security_defender_for_storage_args_doc}
class DefenderForStorageArgs {
  /// Defender for Storage resource properties.
  final pulumi.Input<DefenderForStorageSettingProperties>? properties;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// Defender for Storage setting name.
  final pulumi.Input<String>? settingName;

  /// Creates a new [DefenderForStorageArgs].
  /// [properties] Defender for Storage resource properties.
  /// [resourceId] The identifier of the resource.
  /// [settingName] Defender for Storage setting name.
  DefenderForStorageArgs({
    pulumi.Output<DefenderForStorageSettingProperties>? properties,
    required pulumi.Output<String> resourceId,
    pulumi.Output<String>? settingName,
  }) :
      properties = pulumi.Input.asOptionalInput<DefenderForStorageSettingProperties>(properties),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      settingName = pulumi.Input.asOptionalInput<String>(settingName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<DefenderForStorageSettingProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceId': resourceId,
      'settingName': ?settingName,
    };
  }

  factory DefenderForStorageArgs.fromMap(Map<String, dynamic> map) {
    return DefenderForStorageArgs(
      properties: map['properties'] == null ? null : pulumi.Output.create<DefenderForStorageSettingProperties>(DefenderForStorageSettingProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
      settingName: map['settingName'] == null ? null : pulumi.Output.create<String>(map['settingName'] as String),
    );
  }
}

