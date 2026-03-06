// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_credentials_vmmigration_v1alpha1.dart';
import 'tag_vmmigration_v1alpha1.dart';

/// AwsSourceDetails message describes a specific source details for the AWS source type.
class AwsSourceDetailsVmmigrationV1alpha1 {
  /// AWS Credentials using access key id and secret.
  final pulumi.Input<AccessKeyCredentialsVmmigrationV1alpha1>? accessKeyCreds;
  /// Immutable. The AWS region that the source VMs will be migrated from.
  final pulumi.Input<String>? awsRegion;
  /// AWS security group names to limit the scope of the source inventory.
  final pulumi.Input<List<String>>? inventorySecurityGroupNames;
  /// AWS resource tags to limit the scope of the source inventory.
  final pulumi.Input<List<TagVmmigrationV1alpha1>>? inventoryTagList;
  /// User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  final pulumi.Input<Map<String, String>>? migrationResourcesUserTags;

  /// Creates a new [AwsSourceDetailsVmmigrationV1alpha1].
  /// [accessKeyCreds] AWS Credentials using access key id and secret.
  /// [awsRegion] Immutable. The AWS region that the source VMs will be migrated from.
  /// [inventorySecurityGroupNames] AWS security group names to limit the scope of the source inventory.
  /// [inventoryTagList] AWS resource tags to limit the scope of the source inventory.
  /// [migrationResourcesUserTags] User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  const AwsSourceDetailsVmmigrationV1alpha1({
    this.accessKeyCreds,
    this.awsRegion,
    this.inventorySecurityGroupNames,
    this.inventoryTagList,
    this.migrationResourcesUserTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyCreds': ?pulumi.Input.mapOptionalInputValue<AccessKeyCredentialsVmmigrationV1alpha1, Map<String, dynamic>>(accessKeyCreds, (value) => value.toMap()),
      'awsRegion': ?awsRegion,
      'inventorySecurityGroupNames': ?inventorySecurityGroupNames,
      'inventoryTagList': ?pulumi.Input.mapOptionalInputValue<List<TagVmmigrationV1alpha1>, List<Map<String, dynamic>>>(inventoryTagList, (value) => pulumi.Input.encodeList<TagVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'migrationResourcesUserTags': ?migrationResourcesUserTags,
    };
  }

  factory AwsSourceDetailsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AwsSourceDetailsVmmigrationV1alpha1(
      accessKeyCreds: (() { final guardedValue = map['accessKeyCreds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessKeyCredentialsVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inventorySecurityGroupNames: (() { final guardedValue = map['inventorySecurityGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inventoryTagList: (() { final guardedValue = map['inventoryTagList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagVmmigrationV1alpha1>(guardedValue, (value) => TagVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      migrationResourcesUserTags: (() { final guardedValue = map['migrationResourcesUserTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

