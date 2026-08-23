// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_datastore_config.dart';

/// {@template pulumi_apigee_datastore_datastore_args_doc}
/// The set of arguments for Datastore.
/// {@endtemplate}
/// {@macro pulumi_apigee_datastore_datastore_args_doc}
class DatastoreArgs {
  /// Configuration of the datastore target.
  /// Structure is documented below.
  final pulumi.Input<DatastoreDatastoreConfig> datastoreConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name for the datastore.
  final pulumi.Input<String> displayName;
  /// The Apigee Organization associated with the Apigee datastore,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// The type of target for the datastore. Must be `gcs` for Google
  /// Cloud Storage or `bigquery` for BigQuery.
  final pulumi.Input<String> targetType;

  /// Creates a new [DatastoreArgs].
  /// [datastoreConfig] Configuration of the datastore target.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name for the datastore.
  /// [orgId] The Apigee Organization associated with the Apigee datastore,
  /// [targetType] The type of target for the datastore. Must be `gcs` for Google
  const DatastoreArgs({
    required this.datastoreConfig,
    this.deletionPolicy,
    required this.displayName,
    required this.orgId,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreConfig': pulumi.Input.mapInputValue<DatastoreDatastoreConfig, Map<String, dynamic>>(datastoreConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'orgId': orgId,
      'targetType': targetType,
    };
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      datastoreConfig: pulumi.Input.fromValue(DatastoreDatastoreConfig.fromMap((map['datastoreConfig']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}
