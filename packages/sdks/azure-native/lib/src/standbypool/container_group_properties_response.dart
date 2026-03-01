// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_profile_response.dart';
import 'subnet_response.dart';

/// Details of the ContainerGroupProperties.
class ContainerGroupPropertiesResponse {
  /// Specifies container group profile of standby container groups.
  final ContainerGroupProfileResponse containerGroupProfile;
  /// Specifies subnet Ids for container group.
  final List<SubnetResponse>? subnetIds;

  /// Creates a new [ContainerGroupPropertiesResponse].
  /// [containerGroupProfile] Specifies container group profile of standby container groups.
  /// [subnetIds] Specifies subnet Ids for container group.
  ContainerGroupPropertiesResponse({
    required this.containerGroupProfile,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProfile': containerGroupProfile.toMap(),
      'subnetIds': ?subnetIds == null ? null : pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(subnetIds!, (value) => value.toMap()),
    };
  }

  factory ContainerGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupPropertiesResponse(
      containerGroupProfile: ContainerGroupProfileResponse.fromMap((map['containerGroupProfile'] as Map).cast<String, dynamic>()),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Input.decodeList<SubnetResponse>(map['subnetIds'], (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

