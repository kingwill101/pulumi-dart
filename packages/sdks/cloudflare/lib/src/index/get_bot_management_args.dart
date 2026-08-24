// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_bot_management_get_bot_management_args_doc}
/// Arguments for getBotManagement.
/// {@endtemplate}
/// {@macro pulumi_index_get_bot_management_get_bot_management_args_doc}
class GetBotManagementArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetBotManagementArgs].
  /// [zoneId] Identifier.
  const GetBotManagementArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetBotManagementArgs.fromMap(Map<String, dynamic> map) {
    return GetBotManagementArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
