// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_data_collector_data_collector_args_doc}
/// The set of arguments for DataCollector.
/// {@endtemplate}
/// {@macro pulumi_apigee_data_collector_data_collector_args_doc}
class DataCollectorArgs {
  /// The ID for the data collector. Must begin with `dc_`.
  final pulumi.Input<String> dataCollectorId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the data collector.
  final pulumi.Input<String?>? description;
  /// The Apigee Organization associated with the Apigee data collector,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// The type of data this data collector will collect.
  /// Possible values are: `BOOLEAN`, `DATETIME`, `FLOAT`, `INTEGER`, `STRING`.
  final pulumi.Input<String> type;

  /// Creates a new [DataCollectorArgs].
  /// [dataCollectorId] The ID for the data collector. Must begin with `dc_`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the data collector.
  /// [orgId] The Apigee Organization associated with the Apigee data collector,
  /// [type] The type of data this data collector will collect.
  const DataCollectorArgs({
    required this.dataCollectorId,
    this.deletionPolicy,
    this.description,
    required this.orgId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectorId': dataCollectorId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'orgId': orgId,
      'type': type,
    };
  }

  factory DataCollectorArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectorArgs(
      dataCollectorId: pulumi.Input.fromValue(map['dataCollectorId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
