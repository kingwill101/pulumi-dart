// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the IoT Security solution's user defined resources.
class UserDefinedResourcesProperties {
  /// Azure Resource Graph query which represents the security solution's user defined resources. Required to start with "where type != "Microsoft.Devices/IotHubs""
  final pulumi.Input<String> query;
  /// List of Azure subscription ids on which the user defined resources query should be executed.
  final pulumi.Input<List<String>> querySubscriptions;

  /// Creates a new [UserDefinedResourcesProperties].
  /// [query] Azure Resource Graph query which represents the security solution's user defined resources. Required to start with "where type != "Microsoft.Devices/IotHubs""
  /// [querySubscriptions] List of Azure subscription ids on which the user defined resources query should be executed.
  const UserDefinedResourcesProperties({
    required this.query,
    required this.querySubscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
      'querySubscriptions': querySubscriptions,
    };
  }

  factory UserDefinedResourcesProperties.fromMap(Map<String, dynamic> map) {
    return UserDefinedResourcesProperties(
      query: pulumi.Input.fromValue(map['query'] as String),
      querySubscriptions: pulumi.Input.fromValue((map['querySubscriptions'] as List).cast<String>()),
    );
  }
}

