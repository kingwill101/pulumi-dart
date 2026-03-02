// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_purview_get_kafka_configuration_args_doc}
/// Arguments for getKafkaConfiguration.
/// {@endtemplate}
/// {@macro pulumi_purview_get_kafka_configuration_args_doc}
class GetKafkaConfigurationArgs {
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// Name of kafka configuration.
  final pulumi.Input<String> kafkaConfigurationName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKafkaConfigurationArgs].
  /// [accountName] The name of the account.
  /// [kafkaConfigurationName] Name of kafka configuration.
  /// [resourceGroupName] The resource group name.
  GetKafkaConfigurationArgs({
    required this.accountName,
    required this.kafkaConfigurationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'kafkaConfigurationName': kafkaConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKafkaConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetKafkaConfigurationArgs(
      accountName: (map['accountName'] as String).input(),
      kafkaConfigurationName: (map['kafkaConfigurationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

