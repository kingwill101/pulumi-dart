// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_farm_instance_response.dart';

/// Result data returned by listAppServicePlanServerFarmInstanceDetails.
class ListAppServicePlanServerFarmInstanceDetailsResult {
  /// The total number of instances.
  final int? instanceCount;
  /// The list of server farm instances.
  final List<ServerFarmInstanceResponse>? instances;
  /// The server farm name.
  final String? serverFarmName;

  /// Creates a new [ListAppServicePlanServerFarmInstanceDetailsResult].
  /// [instanceCount] The total number of instances.
  /// [instances] The list of server farm instances.
  /// [serverFarmName] The server farm name.
  const ListAppServicePlanServerFarmInstanceDetailsResult({
    this.instanceCount,
    this.instances,
    this.serverFarmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<ServerFarmInstanceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serverFarmName': ?serverFarmName,
    };
  }

  factory ListAppServicePlanServerFarmInstanceDetailsResult.fromMap(Map<String, dynamic> map) {
    return ListAppServicePlanServerFarmInstanceDetailsResult(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServerFarmInstanceResponse>(guardedValue, (value) => ServerFarmInstanceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      serverFarmName: (() { final guardedValue = map['serverFarmName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

