// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountConsistencyPolicy {
  /// The Consistency Level used by this CosmosDB Account.
  final pulumi.Input<String> consistencyLevel;

  /// The amount of staleness (in seconds) tolerated when the consistency level is Bounded Staleness.
  final pulumi.Input<int> maxIntervalInSeconds;

  /// The number of stale requests tolerated when the consistency level is Bounded Staleness.
  final pulumi.Input<int> maxStalenessPrefix;

  /// Creates a new [GetAccountConsistencyPolicy].
  /// [consistencyLevel] The Consistency Level used by this CosmosDB Account.
  /// [maxIntervalInSeconds] The amount of staleness (in seconds) tolerated when the consistency level is Bounded Staleness.
  /// [maxStalenessPrefix] The number of stale requests tolerated when the consistency level is Bounded Staleness.
  GetAccountConsistencyPolicy({
    required this.consistencyLevel,
    required this.maxIntervalInSeconds,
    required this.maxStalenessPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consistencyLevel': consistencyLevel,
      'maxIntervalInSeconds': maxIntervalInSeconds,
      'maxStalenessPrefix': maxStalenessPrefix,
    };
  }

  factory GetAccountConsistencyPolicy.fromMap(Map<String, dynamic> map) {
    return GetAccountConsistencyPolicy(
      consistencyLevel: pulumi.Input.fromValue(
        map['consistencyLevel'] as String,
      ),
      maxIntervalInSeconds: pulumi.Input.fromValue(
        map['maxIntervalInSeconds'] as int,
      ),
      maxStalenessPrefix: pulumi.Input.fromValue(
        map['maxStalenessPrefix'] as int,
      ),
    );
  }
}
