// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The PSC configurations on producer side.
class ProducerPscConfigResponse {
  /// The resource path of a service attachment. Example: projects/{projectNumOrId}/regions/{region}/serviceAttachments/{resourceId}.
  final pulumi.Input<String> serviceAttachmentUri;

  /// Creates a new [ProducerPscConfigResponse].
  /// [serviceAttachmentUri] The resource path of a service attachment. Example: projects/{projectNumOrId}/regions/{region}/serviceAttachments/{resourceId}.
  ProducerPscConfigResponse({
    required this.serviceAttachmentUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAttachmentUri': serviceAttachmentUri,
    };
  }

  factory ProducerPscConfigResponse.fromMap(Map<String, dynamic> map) {
    return ProducerPscConfigResponse(
      serviceAttachmentUri: (map['serviceAttachmentUri'] as String).input(),
    );
  }
}

