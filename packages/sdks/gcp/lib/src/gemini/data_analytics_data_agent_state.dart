// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent.dart';

/// Input properties used for looking up and filtering DataAnalyticsDataAgent resources.
class DataAnalyticsDataAgentState {
  /// Output only. The time when the data agent was created.
  final pulumi.Input<String?>? createTime;
  /// Required. The ID to use for the DataAgent, which becomes the final component
  /// of the resource name. The ID must start with a lowercase letter and may
  /// contain lowercase letters, digits, underscores, and hyphens, up to 63
  /// characters in total.
  final pulumi.Input<String?>? dataAgentId;
  /// Data analytics agent configuration.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgent?>? dataAnalyticsAgent;
  /// Output only. The time the data agent was soft deleted.
  final pulumi.Input<String?>? deleteTime;
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
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
  final pulumi.Input<String?>? location;
  /// Output only. Identifier. The unique resource name of a DataAgent.
  /// Format: projects/{project}/locations/{location}/dataAgents/{dataAgentId}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Output only. Timestamp in UTC of when this data agent is considered expired.
  final pulumi.Input<String?>? purgeTime;
  /// Output only. The time when the data agent was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [DataAnalyticsDataAgentState].
  /// [createTime] Output only. The time when the data agent was created.
  /// [dataAgentId] Required. The ID to use for the DataAgent, which becomes the final component
  /// [dataAnalyticsAgent] Data analytics agent configuration.
  /// [deleteTime] Output only. The time the data agent was soft deleted.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. Description of the agent. Must be between 1 and 1024 characters.
  /// [displayName] Optional. User friendly display name. Must be between 1 and 256 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [kmsKey] Optional. Customer managed encryption key (CMEK) to use for encrypting the
  /// [labels] Optional. Labels to help users filter related agents.
  /// [location] The location of the DataAgent.
  /// [name] Output only. Identifier. The unique resource name of a DataAgent.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [purgeTime] Output only. Timestamp in UTC of when this data agent is considered expired.
  /// [updateTime] Output only. The time when the data agent was last updated.
  const DataAnalyticsDataAgentState({
    this.createTime,
    this.dataAgentId,
    this.dataAnalyticsAgent,
    this.deleteTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.kmsKey,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.purgeTime,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataAgentId': ?dataAgentId,
      'dataAnalyticsAgent': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgent, Map<String, dynamic>>(dataAnalyticsAgent, (value) => value.toMap()),
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'purgeTime': ?purgeTime,
      'updateTime': ?updateTime,
    };
  }

  factory DataAnalyticsDataAgentState.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataAgentId: (() { final guardedValue = map['dataAgentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataAnalyticsAgent: (() { final guardedValue = map['dataAnalyticsAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      purgeTime: (() { final guardedValue = map['purgeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
