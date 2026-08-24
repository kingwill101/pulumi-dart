// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_network_monitoring_configuration_get_magic_network_monitoring_configuration_args_doc}
/// Arguments for getMagicNetworkMonitoringConfiguration.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_network_monitoring_configuration_get_magic_network_monitoring_configuration_args_doc}
class GetMagicNetworkMonitoringConfigurationArgs {
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetMagicNetworkMonitoringConfigurationArgs].
  /// [accountId] Optional.
  const GetMagicNetworkMonitoringConfigurationArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetMagicNetworkMonitoringConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicNetworkMonitoringConfigurationArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
