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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> kafkaConfigurationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      kafkaConfigurationName = pulumi.Input.asInput<String>(kafkaConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'kafkaConfigurationName': kafkaConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKafkaConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetKafkaConfigurationArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      kafkaConfigurationName: pulumi.Output.create<String>(map['kafkaConfigurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

