// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_subnet_id.dart';

/// Settings to customize ACI container instance.
class ContainerConfiguration {
  /// Container group name, if not specified then the name will get auto-generated. Not specifying a 'containerGroupName' indicates the system to generate a unique name which might end up flagging an Azure Policy as non-compliant. Use 'containerGroupName' when you have an Azure Policy that expects a specific naming convention or when you want to fully control the name. 'containerGroupName' property must be between 1 and 63 characters long, must contain only lowercase letters, numbers, and dashes and it cannot start or end with a dash and consecutive dashes are not allowed. To specify a 'containerGroupName', add the following object to properties: { "containerSettings": { "containerGroupName": "contoso-container" } }. If you do not want to specify a 'containerGroupName' then do not add 'containerSettings' property.
  final pulumi.Input<String>? containerGroupName;
  /// The subnet resource IDs for a container group.
  final pulumi.Input<List<ContainerGroupSubnetId>>? subnetIds;

  /// Creates a new [ContainerConfiguration].
  /// [containerGroupName] Container group name, if not specified then the name will get auto-generated. Not specifying a 'containerGroupName' indicates the system to generate a unique name which might end up flagging an Azure Policy as non-compliant. Use 'containerGroupName' when you have an Azure Policy that expects a specific naming convention or when you want to fully control the name. 'containerGroupName' property must be between 1 and 63 characters long, must contain only lowercase letters, numbers, and dashes and it cannot start or end with a dash and consecutive dashes are not allowed. To specify a 'containerGroupName', add the following object to properties: { "containerSettings": { "containerGroupName": "contoso-container" } }. If you do not want to specify a 'containerGroupName' then do not add 'containerSettings' property.
  /// [subnetIds] The subnet resource IDs for a container group.
  const ContainerConfiguration({
    this.containerGroupName,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupName': ?containerGroupName,
      'subnetIds': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupSubnetId>, List<Map<String, dynamic>>>(subnetIds, (value) => pulumi.Input.encodeList<ContainerGroupSubnetId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerConfiguration(
      containerGroupName: (() { final guardedValue = map['containerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupSubnetId>(guardedValue, (value) => ContainerGroupSubnetId.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

