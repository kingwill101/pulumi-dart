// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The PSC configurations on producer side.
class ProducerPscConfig {
  /// The resource path of a service attachment. Example: projects/{projectNumOrId}/regions/{region}/serviceAttachments/{resourceId}.
  final pulumi.Input<String>? serviceAttachmentUri;

  /// Creates a new [ProducerPscConfig].
  /// [serviceAttachmentUri] The resource path of a service attachment. Example: projects/{projectNumOrId}/regions/{region}/serviceAttachments/{resourceId}.
  ProducerPscConfig({
    this.serviceAttachmentUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAttachmentUri': ?serviceAttachmentUri,
    };
  }

  factory ProducerPscConfig.fromMap(Map<String, dynamic> map) {
    return ProducerPscConfig(
      serviceAttachmentUri: (() { final guardedValue = map['serviceAttachmentUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

