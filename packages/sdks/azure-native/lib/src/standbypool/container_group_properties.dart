// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_profile.dart';
import 'subnet.dart';

/// Details of the ContainerGroupProperties.
class ContainerGroupProperties {
  /// Specifies container group profile of standby container groups.
  final ContainerGroupProfile containerGroupProfile;
  /// Specifies subnet Ids for container group.
  final List<Subnet>? subnetIds;

  /// Creates a new [ContainerGroupProperties].
  /// [containerGroupProfile] Specifies container group profile of standby container groups.
  /// [subnetIds] Specifies subnet Ids for container group.
  ContainerGroupProperties({
    required this.containerGroupProfile,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProfile': containerGroupProfile.toMap(),
      'subnetIds': ?subnetIds == null ? null : pulumi.Input.encodeList<Subnet, Map<String, dynamic>>(subnetIds!, (value) => value.toMap()),
    };
  }

  factory ContainerGroupProperties.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProperties(
      containerGroupProfile: ContainerGroupProfile.fromMap((map['containerGroupProfile'] as Map).cast<String, dynamic>()),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Input.decodeList<Subnet>(map['subnetIds'], (value) => Subnet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

