// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_availability_get_account_availability_args_doc}
/// Arguments for getAccountAvailability.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_availability_get_account_availability_args_doc}
class GetAccountAvailabilityArgs {
  /// The region ID.
  final pulumi.Input<String> region;

  /// Creates a new [GetAccountAvailabilityArgs].
  /// [region] The region ID.
  GetAccountAvailabilityArgs({
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
    };
  }

  factory GetAccountAvailabilityArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountAvailabilityArgs(
      region: (map['region'] as String).input(),
    );
  }
}

