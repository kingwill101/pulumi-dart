// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_workforce_pool_provider_args_doc}
/// Arguments for getWorkforcePoolProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_workforce_pool_provider_args_doc}
class GetWorkforcePoolProviderArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> providerId;
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [GetWorkforcePoolProviderArgs].
  /// [location] Required.
  /// [providerId] Required.
  /// [workforcePoolId] Required.
  GetWorkforcePoolProviderArgs({
    required this.location,
    required this.providerId,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'providerId': providerId,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory GetWorkforcePoolProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolProviderArgs(
      location: (map['location'] as String).input(),
      providerId: (map['providerId'] as String).input(),
      workforcePoolId: (map['workforcePoolId'] as String).input(),
    );
  }
}

