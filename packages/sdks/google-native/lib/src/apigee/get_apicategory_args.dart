// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_apicategory_args_doc}
/// Arguments for getApicategory.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_apicategory_args_doc}
class GetApicategoryArgs {
  final pulumi.Input<String> apicategoryId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetApicategoryArgs].
  /// [apicategoryId] Required.
  /// [organizationId] Required.
  /// [siteId] Required.
  GetApicategoryArgs({
    required pulumi.Output<String> apicategoryId,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> siteId,
  }) :
      apicategoryId = pulumi.Input.asInput<String>(apicategoryId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apicategoryId': apicategoryId,
      'organizationId': organizationId,
      'siteId': siteId,
    };
  }

  factory GetApicategoryArgs.fromMap(Map<String, dynamic> map) {
    return GetApicategoryArgs(
      apicategoryId: pulumi.Output.create<String>(map['apicategoryId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}

