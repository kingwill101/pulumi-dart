// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_profile.dart';
import 'subnet.dart';

/// Details of the ContainerGroupProperties.
class ContainerGroupProperties {
  /// Specifies container group profile of standby container groups.
  final pulumi.Input<ContainerGroupProfile> containerGroupProfile;
  /// Specifies subnet Ids for container group.
  final pulumi.Input<List<Subnet>>? subnetIds;

  /// Creates a new [ContainerGroupProperties].
  /// [containerGroupProfile] Specifies container group profile of standby container groups.
  /// [subnetIds] Specifies subnet Ids for container group.
  ContainerGroupProperties({
    required this.containerGroupProfile,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProfile': pulumi.Input.mapInputValue<ContainerGroupProfile, Map<String, dynamic>>(containerGroupProfile, (value) => value.toMap()),
      'subnetIds': ?pulumi.Input.mapOptionalInputValue<List<Subnet>, List<Map<String, dynamic>>>(subnetIds, (value) => pulumi.Input.encodeList<Subnet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerGroupProperties.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProperties(
      containerGroupProfile: (ContainerGroupProfile.fromMap((map['containerGroupProfile'] as Map).cast<String, dynamic>())).input(),
      subnetIds: map['subnetIds'] == null ? null : (pulumi.Input.decodeList<Subnet>(map['subnetIds']!, (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

