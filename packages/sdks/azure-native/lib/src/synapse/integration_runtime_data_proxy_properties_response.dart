// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_reference_response.dart';

/// Data proxy properties for a managed dedicated integration runtime.
class IntegrationRuntimeDataProxyPropertiesResponse {
  /// The self-hosted integration runtime reference.
  final pulumi.Input<EntityReferenceResponse>? connectVia;
  /// The path to contain the staged data in the Blob storage.
  final pulumi.Input<String>? path;
  /// The staging linked service reference.
  final pulumi.Input<EntityReferenceResponse>? stagingLinkedService;

  /// Creates a new [IntegrationRuntimeDataProxyPropertiesResponse].
  /// [connectVia] The self-hosted integration runtime reference.
  /// [path] The path to contain the staged data in the Blob storage.
  /// [stagingLinkedService] The staging linked service reference.
  const IntegrationRuntimeDataProxyPropertiesResponse({
    this.connectVia,
    this.path,
    this.stagingLinkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectVia': ?pulumi.Input.mapOptionalInputValue<EntityReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'path': ?path,
      'stagingLinkedService': ?pulumi.Input.mapOptionalInputValue<EntityReferenceResponse, Map<String, dynamic>>(stagingLinkedService, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeDataProxyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeDataProxyPropertiesResponse(
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stagingLinkedService: (() { final guardedValue = map['stagingLinkedService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

