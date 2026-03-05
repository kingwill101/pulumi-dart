// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionNetworkEndpointGroupCloudFunction {
  /// A user-defined name of the Cloud Function.
  /// The function name is case-sensitive and must be 1-63 characters long.
  /// Example value: "func1".
  final pulumi.Input<String> function;
  /// A template to parse function field from a request URL. URL mask allows
  /// for routing to multiple Cloud Functions without having to create
  /// multiple Network Endpoint Groups and backend services.
  ///
  /// For example, request URLs "mydomain.com/function1" and "mydomain.com/function2"
  /// can be backed by the same Serverless NEG with URL mask "/". The URL mask
  /// will parse them to { function = "function1" } and { function = "function2" } respectively.
  final pulumi.Input<String> urlMask;

  /// Creates a new [GetRegionNetworkEndpointGroupCloudFunction].
  /// [function] A user-defined name of the Cloud Function.
  /// [urlMask] A template to parse function field from a request URL. URL mask allows
  GetRegionNetworkEndpointGroupCloudFunction({
    required this.function,
    required this.urlMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'function': function,
      'urlMask': urlMask,
    };
  }

  factory GetRegionNetworkEndpointGroupCloudFunction.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupCloudFunction(
      function: pulumi.Input.fromValue(map['function'] as String),
      urlMask: pulumi.Input.fromValue(map['urlMask'] as String),
    );
  }
}

