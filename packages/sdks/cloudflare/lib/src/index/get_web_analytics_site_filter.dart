// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWebAnalyticsSiteFilter {
  /// The property used to sort the list of results.
  /// Available values: "host", "created".
  final pulumi.Input<String?>? orderBy;

  /// Creates a new [GetWebAnalyticsSiteFilter].
  /// [orderBy] The property used to sort the list of results.
  const GetWebAnalyticsSiteFilter({
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orderBy': ?orderBy,
    };
  }

  factory GetWebAnalyticsSiteFilter.fromMap(Map<String, dynamic> map) {
    return GetWebAnalyticsSiteFilter(
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
