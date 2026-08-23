// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_datastore_config.dart';

/// Input properties used for looking up and filtering Datastore resources.
class DatastoreState {
  /// The time at which the datastore was created in milliseconds since the epoch.
  final pulumi.Input<String>? createTime;
  /// Configuration of the datastore target.
  /// Structure is documented below.
  final pulumi.Input<DatastoreDatastoreConfig>? datastoreConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name for the datastore.
  final pulumi.Input<String>? displayName;
  /// The time at which the datastore was last updated in milliseconds since the epoch.
  final pulumi.Input<String>? lastUpdateTime;
  /// The server-assigned UUID identifier for the datastore. Extracted
  /// from the `self` field in the API response.
  final pulumi.Input<String>? name;
  /// The Apigee organization name.
  final pulumi.Input<String>? org;
  /// The Apigee Organization associated with the Apigee datastore,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// The resource link for the datastore, including the full API path.
  final pulumi.Input<String>? self;
  /// The type of target for the datastore. Must be `gcs` for Google
  /// Cloud Storage or `bigquery` for BigQuery.
  final pulumi.Input<String>? targetType;

  /// Creates a new [DatastoreState].
  /// [createTime] The time at which the datastore was created in milliseconds since the epoch.
  /// [datastoreConfig] Configuration of the datastore target.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name for the datastore.
  /// [lastUpdateTime] The time at which the datastore was last updated in milliseconds since the epoch.
  /// [name] The server-assigned UUID identifier for the datastore. Extracted
  /// [org] The Apigee organization name.
  /// [orgId] The Apigee Organization associated with the Apigee datastore,
  /// [self] The resource link for the datastore, including the full API path.
  /// [targetType] The type of target for the datastore. Must be `gcs` for Google
  const DatastoreState({
    this.createTime,
    this.datastoreConfig,
    this.deletionPolicy,
    this.displayName,
    this.lastUpdateTime,
    this.name,
    this.org,
    this.orgId,
    this.self,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'datastoreConfig': ?pulumi.Input.mapOptionalInputValue<DatastoreDatastoreConfig, Map<String, dynamic>>(datastoreConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'lastUpdateTime': ?lastUpdateTime,
      'name': ?name,
      'org': ?org,
      'orgId': ?orgId,
      'self': ?self,
      'targetType': ?targetType,
    };
  }

  factory DatastoreState.fromMap(Map<String, dynamic> map) {
    return DatastoreState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datastoreConfig: (() { final guardedValue = map['datastoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatastoreDatastoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      org: (() { final guardedValue = map['org']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      self: (() { final guardedValue = map['self']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
