// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountCapacity {
  /// The total throughput limit imposed on this Cosmos DB account (RU/s). Possible values are at least `-1`. `-1` means no limit.
  final pulumi.Input<int> totalThroughputLimit;

  /// Creates a new [AccountCapacity].
  /// [totalThroughputLimit] The total throughput limit imposed on this Cosmos DB account (RU/s). Possible values are at least `-1`. `-1` means no limit.
  AccountCapacity({required this.totalThroughputLimit});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'totalThroughputLimit': totalThroughputLimit};
  }

  factory AccountCapacity.fromMap(Map<String, dynamic> map) {
    return AccountCapacity(
      totalThroughputLimit: pulumi.Input.fromValue(
        map['totalThroughputLimit'] as int,
      ),
    );
  }
}
