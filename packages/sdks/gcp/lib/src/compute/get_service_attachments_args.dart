// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_service_attachments_get_service_attachments_args_doc}
/// Arguments for getServiceAttachments.
/// {@endtemplate}
/// {@macro pulumi_compute_get_service_attachments_get_service_attachments_args_doc}
class GetServiceAttachmentsArgs {
  /// A filter expression that filters service attachments listed in the
  /// response. See the
  /// [API `filter` parameter documentation](https://cloud.google.com/compute/docs/reference/rest/v1/serviceAttachments/list#query-parameters)
  /// for details.
  final pulumi.Input<String?>? filter;
  /// The project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region in which the resource belongs.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetServiceAttachmentsArgs].
  /// [filter] A filter expression that filters service attachments listed in the
  /// [project] The project in which the resource belongs.
  /// [region] The region in which the resource belongs.
  const GetServiceAttachmentsArgs({
    this.filter,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetServiceAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentsArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
