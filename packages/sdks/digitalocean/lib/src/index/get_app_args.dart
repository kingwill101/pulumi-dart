// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_dedicated_ip.dart';

/// {@template pulumi_index_get_app_get_app_args_doc}
/// Arguments for getApp.
/// {@endtemplate}
/// {@macro pulumi_index_get_app_get_app_args_doc}
class GetAppArgs {
  /// The ID of the app to retrieve information about.
  final pulumi.Input<String> appId;
  /// A list of dedicated egress IP addresses associated with the app.
  final pulumi.Input<List<GetAppDedicatedIp>>? dedicatedIps;

  /// Creates a new [GetAppArgs].
  /// [appId] The ID of the app to retrieve information about.
  /// [dedicatedIps] A list of dedicated egress IP addresses associated with the app.
  GetAppArgs({
    required this.appId,
    this.dedicatedIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'dedicatedIps': ?pulumi.Input.mapOptionalInputValue<List<GetAppDedicatedIp>, List<Map<String, dynamic>>>(dedicatedIps, (value) => pulumi.Input.encodeList<GetAppDedicatedIp, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      dedicatedIps: (() { final guardedValue = map['dedicatedIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppDedicatedIp>(guardedValue, (value) => GetAppDedicatedIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

