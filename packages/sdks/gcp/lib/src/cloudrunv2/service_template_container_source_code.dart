// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_container_source_code_cloud_storage_source.dart';

class ServiceTemplateContainerSourceCode {
  /// Cloud Storage source.
  /// Structure is documented below.
  final ServiceTemplateContainerSourceCodeCloudStorageSource? cloudStorageSource;

  /// Creates a new [ServiceTemplateContainerSourceCode].
  /// [cloudStorageSource] Cloud Storage source.
  ServiceTemplateContainerSourceCode({
    this.cloudStorageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageSource': ?cloudStorageSource == null ? null : cloudStorageSource!.toMap(),
    };
  }

  factory ServiceTemplateContainerSourceCode.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerSourceCode(
      cloudStorageSource: map['cloudStorageSource'] == null ? null : ServiceTemplateContainerSourceCodeCloudStorageSource.fromMap((map['cloudStorageSource'] as Map).cast<String, dynamic>()),
    );
  }
}

