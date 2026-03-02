// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_source_args_doc}
/// Arguments for getSource.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_source_args_doc}
class GetSourceArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetSourceArgs].
  /// [organizationId] Required.
  /// [sourceId] Required.
  GetSourceArgs({
    required this.organizationId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'sourceId': sourceId,
    };
  }

  factory GetSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceArgs(
      organizationId: (map['organizationId'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
    );
  }
}

