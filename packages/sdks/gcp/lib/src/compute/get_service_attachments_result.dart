// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachments_service_attachment.dart';

/// Result data returned by getServiceAttachments.
class GetServiceAttachmentsResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  /// The region of the service attachment.
  final String? region;
  /// A list of service attachments matching the provided filter. Each
  /// element contains:
  final List<GetServiceAttachmentsServiceAttachment>? serviceAttachments;

  /// Creates a new [GetServiceAttachmentsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [region] The region of the service attachment.
  /// [serviceAttachments] A list of service attachments matching the provided filter. Each
  const GetServiceAttachmentsResult({
    this.filter,
    this.id,
    this.project,
    this.region,
    this.serviceAttachments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'project': ?project,
      'region': ?region,
      'serviceAttachments': ?(() { final guardedValue = serviceAttachments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceAttachmentsServiceAttachment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetServiceAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAttachments: (() { final guardedValue = map['serviceAttachments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceAttachmentsServiceAttachment>(guardedValue, (value) => GetServiceAttachmentsServiceAttachment.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
