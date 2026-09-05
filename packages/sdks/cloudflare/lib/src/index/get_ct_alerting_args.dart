// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ct_alerting_get_ct_alerting_args_doc}
/// Arguments for getCtAlerting.
/// {@endtemplate}
/// {@macro pulumi_index_get_ct_alerting_get_ct_alerting_args_doc}
class GetCtAlertingArgs {
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetCtAlertingArgs].
  /// [zoneId] Identifier.
  const GetCtAlertingArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetCtAlertingArgs.fromMap(Map<String, dynamic> map) {
    return GetCtAlertingArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
