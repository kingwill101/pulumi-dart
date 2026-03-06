// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the IoT Security solution's user defined resources.
class UserDefinedResourcesPropertiesResponse {
  /// Azure Resource Graph query which represents the security solution's user defined resources. Required to start with "where type != "Microsoft.Devices/IotHubs""
  final pulumi.Input<String> query;
  /// List of Azure subscription ids on which the user defined resources query should be executed.
  final pulumi.Input<List<String>> querySubscriptions;

  /// Creates a new [UserDefinedResourcesPropertiesResponse].
  /// [query] Azure Resource Graph query which represents the security solution's user defined resources. Required to start with "where type != "Microsoft.Devices/IotHubs""
  /// [querySubscriptions] List of Azure subscription ids on which the user defined resources query should be executed.
  const UserDefinedResourcesPropertiesResponse({
    required this.query,
    required this.querySubscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
      'querySubscriptions': querySubscriptions,
    };
  }

  factory UserDefinedResourcesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserDefinedResourcesPropertiesResponse(
      query: pulumi.Input.fromValue(map['query'] as String),
      querySubscriptions: pulumi.Input.fromValue((map['querySubscriptions'] as List).cast<String>()),
    );
  }
}

