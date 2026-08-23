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
  const GetApicategoryArgs({
    required this.apicategoryId,
    required this.organizationId,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apicategoryId': apicategoryId,
      'organizationId': organizationId,
      'siteId': siteId,
    };
  }

  factory GetApicategoryArgs.fromMap(Map<String, dynamic> map) {
    return GetApicategoryArgs(
      apicategoryId: pulumi.Input.fromValue(map['apicategoryId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}
