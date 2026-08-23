// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_settings_ssl_management_type.dart';

/// SSL configuration for a DomainMapping resource.
class SslSettings {
  /// ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  final pulumi.Input<String>? certificateId;
  /// SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
  final pulumi.Input<SslSettingsSslManagementType>? sslManagementType;

  /// Creates a new [SslSettings].
  /// [certificateId] ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.
  /// [sslManagementType] SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.
  const SslSettings({
    this.certificateId,
    this.sslManagementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'sslManagementType': ?pulumi.Input.mapOptionalInputValue<SslSettingsSslManagementType, String>(sslManagementType, (value) => value.wireValue),
    };
  }

  factory SslSettings.fromMap(Map<String, dynamic> map) {
    return SslSettings(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslManagementType: (() { final guardedValue = map['sslManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslSettingsSslManagementType.fromValue(guardedValue as String)); })(),
    );
  }
}
