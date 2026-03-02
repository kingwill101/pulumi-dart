// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_credentials.dart';
import 'tag.dart';

/// AwsSourceDetails message describes a specific source details for the AWS source type.
class AwsSourceDetails {
  /// AWS Credentials using access key id and secret.
  final pulumi.Input<AccessKeyCredentials>? accessKeyCreds;
  /// Immutable. The AWS region that the source VMs will be migrated from.
  final pulumi.Input<String>? awsRegion;
  /// AWS security group names to limit the scope of the source inventory.
  final pulumi.Input<List<String>>? inventorySecurityGroupNames;
  /// AWS resource tags to limit the scope of the source inventory.
  final pulumi.Input<List<Tag>>? inventoryTagList;
  /// User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  final pulumi.Input<Map<String, String>>? migrationResourcesUserTags;

  /// Creates a new [AwsSourceDetails].
  /// [accessKeyCreds] AWS Credentials using access key id and secret.
  /// [awsRegion] Immutable. The AWS region that the source VMs will be migrated from.
  /// [inventorySecurityGroupNames] AWS security group names to limit the scope of the source inventory.
  /// [inventoryTagList] AWS resource tags to limit the scope of the source inventory.
  /// [migrationResourcesUserTags] User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  AwsSourceDetails({
    this.accessKeyCreds,
    this.awsRegion,
    this.inventorySecurityGroupNames,
    this.inventoryTagList,
    this.migrationResourcesUserTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyCreds': ?pulumi.Input.mapOptionalInputValue<AccessKeyCredentials, Map<String, dynamic>>(accessKeyCreds, (value) => value.toMap()),
      'awsRegion': ?awsRegion,
      'inventorySecurityGroupNames': ?inventorySecurityGroupNames,
      'inventoryTagList': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(inventoryTagList, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'migrationResourcesUserTags': ?migrationResourcesUserTags,
    };
  }

  factory AwsSourceDetails.fromMap(Map<String, dynamic> map) {
    return AwsSourceDetails(
      accessKeyCreds: map['accessKeyCreds'] == null ? null : (AccessKeyCredentials.fromMap((map['accessKeyCreds'] as Map).cast<String, dynamic>())).input(),
      awsRegion: map['awsRegion'] == null ? null : (map['awsRegion'] as String).input(),
      inventorySecurityGroupNames: map['inventorySecurityGroupNames'] == null ? null : ((map['inventorySecurityGroupNames'] as List).cast<String>()).input(),
      inventoryTagList: map['inventoryTagList'] == null ? null : (pulumi.Input.decodeList<Tag>(map['inventoryTagList'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      migrationResourcesUserTags: map['migrationResourcesUserTags'] == null ? null : ((map['migrationResourcesUserTags'] as Map).cast<String, String>()).input(),
    );
  }
}

