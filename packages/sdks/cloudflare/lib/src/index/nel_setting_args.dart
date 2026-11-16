// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nel_setting_value.dart';

/// {@template pulumi_index_nel_setting_nel_setting_args_doc}
/// The set of arguments for NelSetting.
/// {@endtemplate}
/// {@macro pulumi_index_nel_setting_nel_setting_args_doc}
class NelSettingArgs {
  /// The NEL configuration value.
  final pulumi.Input<NelSettingValue> value;
  /// Identifier of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [NelSettingArgs].
  /// [value] The NEL configuration value.
  /// [zoneId] Identifier of the zone.
  const NelSettingArgs({
    required this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': pulumi.Input.mapInputValue<NelSettingValue, Map<String, dynamic>>(value, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory NelSettingArgs.fromMap(Map<String, dynamic> map) {
    return NelSettingArgs(
      value: pulumi.Input.fromValue(NelSettingValue.fromMap((map['value']! as Map).cast<String, dynamic>())),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
