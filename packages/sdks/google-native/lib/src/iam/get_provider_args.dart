// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_provider_args_doc}
/// Arguments for getProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_provider_args_doc}
class GetProviderArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> providerId;
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Creates a new [GetProviderArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [providerId] Required.
  /// [workloadIdentityPoolId] Required.
  GetProviderArgs({
    required this.location,
    this.project,
    required this.providerId,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'providerId': providerId,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory GetProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerId: pulumi.Input.fromValue(map['providerId'] as String),
      workloadIdentityPoolId: pulumi.Input.fromValue(
        map['workloadIdentityPoolId'] as String,
      ),
    );
  }
}
