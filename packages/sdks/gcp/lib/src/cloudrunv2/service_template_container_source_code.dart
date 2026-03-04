// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_container_source_code_cloud_storage_source.dart';

class ServiceTemplateContainerSourceCode {
  /// Cloud Storage source.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateContainerSourceCodeCloudStorageSource>?
  cloudStorageSource;

  /// Creates a new [ServiceTemplateContainerSourceCode].
  /// [cloudStorageSource] Cloud Storage source.
  ServiceTemplateContainerSourceCode({this.cloudStorageSource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageSource':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceTemplateContainerSourceCodeCloudStorageSource,
            Map<String, dynamic>
          >(cloudStorageSource, (value) => value.toMap()),
    };
  }

  factory ServiceTemplateContainerSourceCode.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerSourceCode(
      cloudStorageSource: (() {
        final guardedValue = map['cloudStorageSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceTemplateContainerSourceCodeCloudStorageSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
