// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container_source_code_cloud_storage_source.dart';

class GetServiceTemplateContainerSourceCode {
  /// Cloud Storage source.
  final pulumi.Input<List<GetServiceTemplateContainerSourceCodeCloudStorageSource>> cloudStorageSources;

  /// Creates a new [GetServiceTemplateContainerSourceCode].
  /// [cloudStorageSources] Cloud Storage source.
  GetServiceTemplateContainerSourceCode({
    required this.cloudStorageSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageSources': pulumi.Input.mapInputValue<List<GetServiceTemplateContainerSourceCodeCloudStorageSource>, List<Map<String, dynamic>>>(cloudStorageSources, (value) => pulumi.Input.encodeList<GetServiceTemplateContainerSourceCodeCloudStorageSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceTemplateContainerSourceCode.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerSourceCode(
      cloudStorageSources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateContainerSourceCodeCloudStorageSource>(map['cloudStorageSources']!, (value) => GetServiceTemplateContainerSourceCodeCloudStorageSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

