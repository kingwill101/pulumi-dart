// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_subnet_id_response.dart';

/// Settings to customize ACI container instance.
class ContainerConfigurationResponse {
  /// Container group name, if not specified then the name will get auto-generated. Not specifying a 'containerGroupName' indicates the system to generate a unique name which might end up flagging an Azure Policy as non-compliant. Use 'containerGroupName' when you have an Azure Policy that expects a specific naming convention or when you want to fully control the name. 'containerGroupName' property must be between 1 and 63 characters long, must contain only lowercase letters, numbers, and dashes and it cannot start or end with a dash and consecutive dashes are not allowed. To specify a 'containerGroupName', add the following object to properties: { "containerSettings": { "containerGroupName": "contoso-container" } }. If you do not want to specify a 'containerGroupName' then do not add 'containerSettings' property.
  final pulumi.Input<String>? containerGroupName;
  /// The subnet resource IDs for a container group.
  final pulumi.Input<List<ContainerGroupSubnetIdResponse>>? subnetIds;

  /// Creates a new [ContainerConfigurationResponse].
  /// [containerGroupName] Container group name, if not specified then the name will get auto-generated. Not specifying a 'containerGroupName' indicates the system to generate a unique name which might end up flagging an Azure Policy as non-compliant. Use 'containerGroupName' when you have an Azure Policy that expects a specific naming convention or when you want to fully control the name. 'containerGroupName' property must be between 1 and 63 characters long, must contain only lowercase letters, numbers, and dashes and it cannot start or end with a dash and consecutive dashes are not allowed. To specify a 'containerGroupName', add the following object to properties: { "containerSettings": { "containerGroupName": "contoso-container" } }. If you do not want to specify a 'containerGroupName' then do not add 'containerSettings' property.
  /// [subnetIds] The subnet resource IDs for a container group.
  const ContainerConfigurationResponse({
    this.containerGroupName,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupName': ?containerGroupName,
      'subnetIds': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupSubnetIdResponse>, List<Map<String, dynamic>>>(subnetIds, (value) => pulumi.Input.encodeList<ContainerGroupSubnetIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ContainerConfigurationResponse(
      containerGroupName: (() { final guardedValue = map['containerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupSubnetIdResponse>(guardedValue, (value) => ContainerGroupSubnetIdResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

