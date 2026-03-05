// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_credentials_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'tag_response_vmmigration_v1alpha1.dart';

/// AwsSourceDetails message describes a specific source details for the AWS source type.
class AwsSourceDetailsResponseVmmigrationV1alpha1 {
  /// AWS Credentials using access key id and secret.
  final pulumi.Input<AccessKeyCredentialsResponseVmmigrationV1alpha1> accessKeyCreds;
  /// Immutable. The AWS region that the source VMs will be migrated from.
  final pulumi.Input<String> awsRegion;
  /// Provides details on the state of the Source in case of an error.
  final pulumi.Input<StatusResponseVmmigrationV1alpha1> error;
  /// AWS security group names to limit the scope of the source inventory.
  final pulumi.Input<List<String>> inventorySecurityGroupNames;
  /// AWS resource tags to limit the scope of the source inventory.
  final pulumi.Input<List<TagResponseVmmigrationV1alpha1>> inventoryTagList;
  /// User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  final pulumi.Input<Map<String, String>> migrationResourcesUserTags;
  /// The source's public IP. All communication initiated by this source will originate from this IP.
  final pulumi.Input<String> publicIp;
  /// State of the source as determined by the health check.
  final pulumi.Input<String> state;

  /// Creates a new [AwsSourceDetailsResponseVmmigrationV1alpha1].
  /// [accessKeyCreds] AWS Credentials using access key id and secret.
  /// [awsRegion] Immutable. The AWS region that the source VMs will be migrated from.
  /// [error] Provides details on the state of the Source in case of an error.
  /// [inventorySecurityGroupNames] AWS security group names to limit the scope of the source inventory.
  /// [inventoryTagList] AWS resource tags to limit the scope of the source inventory.
  /// [migrationResourcesUserTags] User specified tags to add to every M2VM generated resource in AWS. These tags will be set in addition to the default tags that are set as part of the migration process. The tags must not begin with the reserved prefix `m2vm`.
  /// [publicIp] The source's public IP. All communication initiated by this source will originate from this IP.
  /// [state] State of the source as determined by the health check.
  AwsSourceDetailsResponseVmmigrationV1alpha1({
    required this.accessKeyCreds,
    required this.awsRegion,
    required this.error,
    required this.inventorySecurityGroupNames,
    required this.inventoryTagList,
    required this.migrationResourcesUserTags,
    required this.publicIp,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyCreds': pulumi.Input.mapInputValue<AccessKeyCredentialsResponseVmmigrationV1alpha1, Map<String, dynamic>>(accessKeyCreds, (value) => value.toMap()),
      'awsRegion': awsRegion,
      'error': pulumi.Input.mapInputValue<StatusResponseVmmigrationV1alpha1, Map<String, dynamic>>(error, (value) => value.toMap()),
      'inventorySecurityGroupNames': inventorySecurityGroupNames,
      'inventoryTagList': pulumi.Input.mapInputValue<List<TagResponseVmmigrationV1alpha1>, List<Map<String, dynamic>>>(inventoryTagList, (value) => pulumi.Input.encodeList<TagResponseVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'migrationResourcesUserTags': migrationResourcesUserTags,
      'publicIp': publicIp,
      'state': state,
    };
  }

  factory AwsSourceDetailsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AwsSourceDetailsResponseVmmigrationV1alpha1(
      accessKeyCreds: pulumi.Input.fromValue(AccessKeyCredentialsResponseVmmigrationV1alpha1.fromMap((map['accessKeyCreds']! as Map).cast<String, dynamic>())),
      awsRegion: pulumi.Input.fromValue(map['awsRegion'] as String),
      error: pulumi.Input.fromValue(StatusResponseVmmigrationV1alpha1.fromMap((map['error']! as Map).cast<String, dynamic>())),
      inventorySecurityGroupNames: pulumi.Input.fromValue((map['inventorySecurityGroupNames'] as List).cast<String>()),
      inventoryTagList: pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponseVmmigrationV1alpha1>(map['inventoryTagList']!, (value) => TagResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      migrationResourcesUserTags: pulumi.Input.fromValue((map['migrationResourcesUserTags'] as Map).cast<String, String>()),
      publicIp: pulumi.Input.fromValue(map['publicIp'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

