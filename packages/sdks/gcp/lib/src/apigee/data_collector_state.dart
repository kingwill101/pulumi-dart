// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataCollector resources.
class DataCollectorState {
  /// The time at which the data collector was created in milliseconds since the epoch.
  final pulumi.Input<String?>? createdAt;
  /// The ID for the data collector. Must begin with `dc_`.
  final pulumi.Input<String?>? dataCollectorId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the data collector.
  final pulumi.Input<String?>? description;
  /// The time at which the data collector was last modified in milliseconds since the epoch.
  final pulumi.Input<String?>? lastModifiedAt;
  /// The resource name of the data collector, in the format
  /// `organizations/{{org_name}}/datacollectors/{{data_collector_id}}`.
  final pulumi.Input<String?>? name;
  /// The Apigee Organization associated with the Apigee data collector,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String?>? orgId;
  /// The type of data this data collector will collect.
  /// Possible values are: `BOOLEAN`, `DATETIME`, `FLOAT`, `INTEGER`, `STRING`.
  final pulumi.Input<String?>? type;

  /// Creates a new [DataCollectorState].
  /// [createdAt] The time at which the data collector was created in milliseconds since the epoch.
  /// [dataCollectorId] The ID for the data collector. Must begin with `dc_`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the data collector.
  /// [lastModifiedAt] The time at which the data collector was last modified in milliseconds since the epoch.
  /// [name] The resource name of the data collector, in the format
  /// [orgId] The Apigee Organization associated with the Apigee data collector,
  /// [type] The type of data this data collector will collect.
  const DataCollectorState({
    this.createdAt,
    this.dataCollectorId,
    this.deletionPolicy,
    this.description,
    this.lastModifiedAt,
    this.name,
    this.orgId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'dataCollectorId': ?dataCollectorId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'orgId': ?orgId,
      'type': ?type,
    };
  }

  factory DataCollectorState.fromMap(Map<String, dynamic> map) {
    return DataCollectorState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCollectorId: (() { final guardedValue = map['dataCollectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
