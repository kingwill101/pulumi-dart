// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExemptPriorityLevelConfiguration describes the configurable aspects of the handling of exempt requests. In the mandatory exempt configuration object the values in the fields here can be modified by authorized users, unlike the rest of the `spec`.
class ExemptPriorityLevelConfiguration {
  /// `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels.  This value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
  ///
  /// LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
  final pulumi.Input<int?>? lendablePercent;
  /// `nominalConcurrencyShares` (NCS) contributes to the computation of the NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats nominally reserved for this priority level. This DOES NOT limit the dispatching from this priority level but affects the other priority levels through the borrowing mechanism. The server's concurrency limit (ServerCL) is divided among all the priority levels in proportion to their NCS values:
  ///
  /// NominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs ) sum_ncs = sum[priority level k] NCS(k)
  ///
  /// Bigger numbers mean a larger nominal concurrency limit, at the expense of every other priority level. This field has a default value of zero.
  final pulumi.Input<int?>? nominalConcurrencyShares;

  /// Creates a new [ExemptPriorityLevelConfiguration].
  /// [lendablePercent] `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels.  This value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
  /// [nominalConcurrencyShares] `nominalConcurrencyShares` (NCS) contributes to the computation of the NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats nominally reserved for this priority level. This DOES NOT limit the dispatching from this priority level but affects the other priority levels through the borrowing mechanism. The server's concurrency limit (ServerCL) is divided among all the priority levels in proportion to their NCS values:
  const ExemptPriorityLevelConfiguration({
    this.lendablePercent,
    this.nominalConcurrencyShares,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lendablePercent': ?lendablePercent,
      'nominalConcurrencyShares': ?nominalConcurrencyShares,
    };
  }

  factory ExemptPriorityLevelConfiguration.fromMap(Map<String, dynamic> map) {
    return ExemptPriorityLevelConfiguration(
      lendablePercent: (() { final guardedValue = map['lendablePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nominalConcurrencyShares: (() { final guardedValue = map['nominalConcurrencyShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
