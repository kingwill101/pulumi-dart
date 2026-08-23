// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_organization_sink_args_doc}
/// Arguments for getOrganizationSink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_organization_sink_args_doc}
class GetOrganizationSinkArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sinkId;

  /// Creates a new [GetOrganizationSinkArgs].
  /// [organizationId] Required.
  /// [sinkId] Required.
  const GetOrganizationSinkArgs({
    required this.organizationId,
    required this.sinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'sinkId': sinkId,
    };
  }

  factory GetOrganizationSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSinkArgs(
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      sinkId: pulumi.Input.fromValue(map['sinkId'] as String),
    );
  }
}
