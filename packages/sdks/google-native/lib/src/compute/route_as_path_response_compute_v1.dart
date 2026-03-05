// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteAsPathResponseComputeV1 {
  /// The AS numbers of the AS Path.
  final pulumi.Input<List<int>> asLists;
  /// The type of the AS Path, which can be one of the following values: - 'AS_SET': unordered set of autonomous systems that the route in has traversed - 'AS_SEQUENCE': ordered set of autonomous systems that the route has traversed - 'AS_CONFED_SEQUENCE': ordered set of Member Autonomous Systems in the local confederation that the route has traversed - 'AS_CONFED_SET': unordered set of Member Autonomous Systems in the local confederation that the route has traversed
  final pulumi.Input<String> pathSegmentType;

  /// Creates a new [RouteAsPathResponseComputeV1].
  /// [asLists] The AS numbers of the AS Path.
  /// [pathSegmentType] The type of the AS Path, which can be one of the following values: - 'AS_SET': unordered set of autonomous systems that the route in has traversed - 'AS_SEQUENCE': ordered set of autonomous systems that the route has traversed - 'AS_CONFED_SEQUENCE': ordered set of Member Autonomous Systems in the local confederation that the route has traversed - 'AS_CONFED_SET': unordered set of Member Autonomous Systems in the local confederation that the route has traversed
  RouteAsPathResponseComputeV1({
    required this.asLists,
    required this.pathSegmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asLists': asLists,
      'pathSegmentType': pathSegmentType,
    };
  }

  factory RouteAsPathResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return RouteAsPathResponseComputeV1(
      asLists: pulumi.Input.fromValue((map['asLists'] as List).cast<int>()),
      pathSegmentType: pulumi.Input.fromValue(map['pathSegmentType'] as String),
    );
  }
}

