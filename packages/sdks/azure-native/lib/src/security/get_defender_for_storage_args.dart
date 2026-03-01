// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_defender_for_storage_args_doc}
/// Arguments for getDefenderForStorage.
/// {@endtemplate}
/// {@macro pulumi_security_get_defender_for_storage_args_doc}
class GetDefenderForStorageArgs {
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// Defender for Storage setting name.
  final pulumi.Input<String> settingName;

  /// Creates a new [GetDefenderForStorageArgs].
  /// [resourceId] The identifier of the resource.
  /// [settingName] Defender for Storage setting name.
  GetDefenderForStorageArgs({
    required pulumi.Output<String> resourceId,
    required pulumi.Output<String> settingName,
  }) :
      resourceId = pulumi.Input.asInput<String>(resourceId),
      settingName = pulumi.Input.asInput<String>(settingName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'settingName': settingName,
    };
  }

  factory GetDefenderForStorageArgs.fromMap(Map<String, dynamic> map) {
    return GetDefenderForStorageArgs(
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
      settingName: pulumi.Output.create<String>(map['settingName'] as String),
    );
  }
}

