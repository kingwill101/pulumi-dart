// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_catalog_replica.dart';

/// Input properties used for looking up and filtering HiveCatalog resources.
class HiveCatalogState {
  /// Output only. The creation time of the catalog.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the Hive catalog.
  final pulumi.Input<String>? description;
  /// Cloud Storage location path where the catalog data will be stored. Format: gs://bucket/path/to/catalog
  final pulumi.Input<String>? locationUri;
  /// Name of the Hive Catalog.
  final pulumi.Input<String>? name;
  /// The primary location for mirroring the remote catalog metadata. It must be
  /// a BigLake-supported location, and it should be proximate to the remote
  /// catalog's location.
  final pulumi.Input<String>? primaryLocation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. The replicas for the catalog metadata.
  /// Structure is documented below.
  final pulumi.Input<List<HiveCatalogReplica>>? replicas;
  /// Output only. The update time of the catalog.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [HiveCatalogState].
  /// [createTime] Output only. The creation time of the catalog.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the Hive catalog.
  /// [locationUri] Cloud Storage location path where the catalog data will be stored. Format: gs://bucket/path/to/catalog
  /// [name] Name of the Hive Catalog.
  /// [primaryLocation] The primary location for mirroring the remote catalog metadata. It must be
  /// [project] The ID of the project in which the resource belongs.
  /// [replicas] Output only. The replicas for the catalog metadata.
  /// [updateTime] Output only. The update time of the catalog.
  const HiveCatalogState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.locationUri,
    this.name,
    this.primaryLocation,
    this.project,
    this.replicas,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'locationUri': ?locationUri,
      'name': ?name,
      'primaryLocation': ?primaryLocation,
      'project': ?project,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<HiveCatalogReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<HiveCatalogReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory HiveCatalogState.fromMap(Map<String, dynamic> map) {
    return HiveCatalogState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryLocation: (() { final guardedValue = map['primaryLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HiveCatalogReplica>(guardedValue, (value) => HiveCatalogReplica.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
