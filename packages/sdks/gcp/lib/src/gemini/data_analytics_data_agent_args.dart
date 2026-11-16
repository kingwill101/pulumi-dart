// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent.dart';

/// {@template pulumi_gemini_data_analytics_data_agent_data_analytics_data_agent_args_doc}
/// The set of arguments for DataAnalyticsDataAgent.
/// {@endtemplate}
/// {@macro pulumi_gemini_data_analytics_data_agent_data_analytics_data_agent_args_doc}
class DataAnalyticsDataAgentArgs {
  /// Required. The ID to use for the DataAgent, which becomes the final component
  /// of the resource name. The ID must start with a lowercase letter and may
  /// contain lowercase letters, digits, underscores, and hyphens, up to 63
  /// characters in total.
  final pulumi.Input<String> dataAgentId;
  /// Data analytics agent configuration.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgent?>? dataAnalyticsAgent;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. Description of the agent. Must be between 1 and 1024 characters.
  final pulumi.Input<String?>? description;
  /// Optional. User friendly display name. Must be between 1 and 256 characters.
  final pulumi.Input<String?>? displayName;
  /// Optional. Customer managed encryption key (CMEK) to use for encrypting the
  /// DataAgent resources. Cloud KMS CryptoKeys must reside in the same location
  /// as the DataAgent. The expected format is
  /// projects/*/locations/*/keyRings/*/cryptoKeys/*.
  final pulumi.Input<String?>? kmsKey;
  /// Optional. Labels to help users filter related agents.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the DataAgent.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [DataAnalyticsDataAgentArgs].
  /// [dataAgentId] Required. The ID to use for the DataAgent, which becomes the final component
  /// [dataAnalyticsAgent] Data analytics agent configuration.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. Description of the agent. Must be between 1 and 1024 characters.
  /// [displayName] Optional. User friendly display name. Must be between 1 and 256 characters.
  /// [kmsKey] Optional. Customer managed encryption key (CMEK) to use for encrypting the
  /// [labels] Optional. Labels to help users filter related agents.
  /// [location] The location of the DataAgent.
  /// [project] The ID of the project in which the resource belongs.
  const DataAnalyticsDataAgentArgs({
    required this.dataAgentId,
    this.dataAnalyticsAgent,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.kmsKey,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAgentId': dataAgentId,
      'dataAnalyticsAgent': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgent, Map<String, dynamic>>(dataAnalyticsAgent, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory DataAnalyticsDataAgentArgs.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentArgs(
      dataAgentId: pulumi.Input.fromValue(map['dataAgentId'] as String),
      dataAnalyticsAgent: (() { final guardedValue = map['dataAnalyticsAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
