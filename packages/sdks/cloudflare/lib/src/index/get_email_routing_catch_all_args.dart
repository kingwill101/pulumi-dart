// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_routing_catch_all_get_email_routing_catch_all_args_doc}
/// Arguments for getEmailRoutingCatchAll.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_routing_catch_all_get_email_routing_catch_all_args_doc}
class GetEmailRoutingCatchAllArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetEmailRoutingCatchAllArgs].
  /// [zoneId] Identifier.
  const GetEmailRoutingCatchAllArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingCatchAllArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingCatchAllArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
