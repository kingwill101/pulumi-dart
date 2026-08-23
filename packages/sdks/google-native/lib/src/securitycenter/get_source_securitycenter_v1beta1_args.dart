// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1beta1_get_source_securitycenter_v1beta1_args_doc}
/// Arguments for getSource.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1beta1_get_source_securitycenter_v1beta1_args_doc}
class GetSourceSecuritycenterV1beta1Args {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetSourceSecuritycenterV1beta1Args].
  /// [organizationId] Required.
  /// [sourceId] Required.
  const GetSourceSecuritycenterV1beta1Args({
    required this.organizationId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'sourceId': sourceId,
    };
  }

  factory GetSourceSecuritycenterV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSourceSecuritycenterV1beta1Args(
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
    );
  }
}
