// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_identity_aware_proxy_client_args_doc}
/// The set of arguments for IdentityAwareProxyClient.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_identity_aware_proxy_client_args_doc}
class IdentityAwareProxyClientArgs {
  final pulumi.Input<String> brandId;
  /// Human-friendly name given to the OAuth client.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? project;

  /// Creates a new [IdentityAwareProxyClientArgs].
  /// [brandId] Required.
  /// [displayName] Human-friendly name given to the OAuth client.
  /// [project] Optional.
  IdentityAwareProxyClientArgs({
    required this.brandId,
    this.displayName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brandId': brandId,
      'displayName': ?displayName,
      'project': ?project,
    };
  }

  factory IdentityAwareProxyClientArgs.fromMap(Map<String, dynamic> map) {
    return IdentityAwareProxyClientArgs(
      brandId: (map['brandId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

